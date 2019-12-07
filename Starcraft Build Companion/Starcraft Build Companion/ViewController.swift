//
//  ViewController.swift
//  Starcraft Build Companion
//
//  Created by Max Cole on 12/11/2019.
//  Copyright © 2019 Max Cole. All rights reserved.
//

import UIKit
import AVFoundation

var soundState = "Sound On"
var soundOn = true

class ViewController: UIViewController {
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return.lightContent
    }
    
    @IBOutlet weak var soundButton: UIButton!
    
    var audioPlayer = AVAudioPlayer()
    var className = ""
    var backgroundColor = UIColor.gray
    var classImageName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        soundButton.setTitle(soundState, for: .normal)
        if (soundOn == true) {
            playSound(soundFile: "AppOpen")
        }
        
    }
    
 
    @IBAction func soundButtonTapped(_ sender: UIButton) {
        if (soundOn == true) {
            soundOn = false
            soundState = "Sound Off"
            soundButton.setTitle(soundState, for: .normal)
        }
        else {
            soundOn = true
            soundState = "Sound On"
            soundButton.setTitle(soundState, for: .normal)        }
    }
   
    
    @IBAction func classButtonTapped(_ sender: UIButton) {
        if (sender.tag == 0 ) {
            self.className = "Terran"
            self.backgroundColor = UIColor.blue
            self.classImageName = "TerranLogo"
            if (soundOn == true) {
                playSound(soundFile: "TerranFood")
            }
            performSegue(withIdentifier: "classChosen", sender: self)
        }
        else if (sender.tag == 1 ) {
            self.className = "Zerg"
            self.backgroundColor = UIColor.purple
            self.classImageName = "ZergLogo"
            if (soundOn == true) {
                playSound(soundFile: "ZergFood")
            }
            performSegue(withIdentifier: "classChosen", sender: self)
        }
        else if (sender.tag == 2 ) {
            self.className = "Protoss"
            self.backgroundColor = UIColor.yellow
            self.classImageName = "ProtossLogo"
            if (soundOn == true) {
                playSound(soundFile: "ProtossFood")
            }
            performSegue(withIdentifier: "classChosen", sender: self)
        }
        else if (sender.tag == 3 ) {
            self.className = "Co-op"
            self.backgroundColor = UIColor.gray
            self.classImageName = "CoopLogo"
            if (soundOn == true) {
                playSound(soundFile: "CoopAllys")
            }
            performSegue(withIdentifier: "classChosen", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vc = segue.destination as! BuildViewController
        vc.className = self.className
        vc.backgroundColor = self.backgroundColor
        vc.classImageName = self.classImageName
    }
    
    func playSound (soundFile: String){
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: soundFile, ofType: "mp3")!))
            audioPlayer.prepareToPlay()
            audioPlayer.play()
        }
        catch {
            print(error)
        }
    }
    
}


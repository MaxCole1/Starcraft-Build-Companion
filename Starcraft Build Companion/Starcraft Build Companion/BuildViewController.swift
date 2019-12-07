//
//  BuildViewController.swift
//  Starcraft Build Companion
//
//  Created by Max Cole on 15/11/2019.
//  Copyright © 2019 Max Cole. All rights reserved.
//


import UIKit
import AVFoundation

/*
var soundState = "Sound On"
var soundOn = true
*/

class BuildViewController: UIViewController {
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return.lightContent
    }
 
    
    var className = ""
    var buildName = ""
    var backgroundColor = UIColor.gray
    var classImageName = ""
    
    
    @IBOutlet weak var mainImageView: UIView!
    @IBOutlet weak var display: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nameLabel.text = className
        mainImageView.backgroundColor = backgroundColor
        display.image = UIImage(named: classImageName)
    }
    @IBAction func testButton(_ sender: UIButton) {
        if (sender.tag == 0 ) {
            self.buildName = "Economic"
            performSegue(withIdentifier: "buildChosen", sender: self)
        }
        if (sender.tag == 1 ) {
            self.buildName = "Timing Attack"
            performSegue(withIdentifier: "buildChosen", sender: self)
        }
        if (sender.tag == 2 ) {
            self.buildName = "Cheese"
            performSegue(withIdentifier: "buildChosen", sender: self)
        }
        if (sender.tag == 3 ) {
            self.buildName = "All-In"
            performSegue(withIdentifier: "buildChosen", sender: self)
        }
        if (sender.tag == 4 ) {
            self.buildName = "Rush"
            performSegue(withIdentifier: "buildChosen", sender: self)
        }
        if (sender.tag == 5 ) {
            self.buildName = "Defensive"
            performSegue(withIdentifier: "buildChosen", sender: self)
        }
        if (sender.tag == 6 ) {
            self.buildName = "End Game"
            performSegue(withIdentifier: "buildChosen", sender: self)
        }
        if (sender.tag == 7 ) {
            self.buildName = "Safe"
            performSegue(withIdentifier: "buildChosen", sender: self)
        }
        if (sender.tag == 8 ) {
            self.buildName = "2 Base Push"
            performSegue(withIdentifier: "buildChosen", sender: self)
        }
        if (sender.tag == 9 ) {
            self.buildName = "Beginner"
            performSegue(withIdentifier: "buildChosen", sender: self)
        }
        if (sender.tag == 10 ) {
            self.buildName = "Proxy"
            performSegue(withIdentifier: "buildChosen", sender: self)
        }
        if (sender.tag == 11 ) {
            self.buildName = "Fortress"
            performSegue(withIdentifier: "buildChosen", sender: self)
        }
        if (sender.tag == 12 ) {
            self.buildName = "Quick Push"
            performSegue(withIdentifier: "buildChosen", sender: self)
        }
        if (sender.tag == 13 ) {
            self.buildName = "Fast Opening"
            performSegue(withIdentifier: "buildChosen", sender: self)
        }
        if (sender.tag == 14 ) {
            self.buildName = "Expansion"
            performSegue(withIdentifier: "buildChosen", sender: self)
        }
        if (sender.tag == 15 ) {
            self.buildName = "Challenger"
            performSegue(withIdentifier: "buildChosen", sender: self)
        }
    }
    


    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if (segue.identifier == "buildChosen") {
            var vc = segue.destination as! OrderViewController
            vc.className = self.className
            vc.buildName = self.buildName
            vc.backgroundColor = self.backgroundColor
            vc.classImageName = self.classImageName
        }
        else {
            var vc = segue.destination as! ViewController
        }
    }
    
}

//
//  OrderViewController.swift
//  Starcraft Build Companion
//
//  Created by Max Cole on 29/11/2019.
//  Copyright © 2019 Max Cole. All rights reserved.
//
import UIKit
import Foundation

class OrderViewController: UIViewController {
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return.lightContent
    }
    
    var className = ""
    var buildName = ""
    var backgroundColor = UIColor.gray
    var classImageName = ""

    @IBOutlet weak var display: UIImageView!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nameLabel.text = buildName
        mainView.backgroundColor = backgroundColor
        display.image = UIImage(named: classImageName)
        
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
            performSegue(withIdentifier: "backPressed", sender: self)
        }
    
    
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vc = segue.destination as! BuildViewController
        vc.className = self.className
        vc.backgroundColor = self.backgroundColor
        vc.classImageName = classImageName
    }
}
    


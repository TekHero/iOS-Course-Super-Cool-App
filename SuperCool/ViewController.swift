//
//  ViewController.swift
//  SuperCool
//
//  Created by Brian Lim on 10/28/15.
//  Copyright © 2015 CloudTekApps. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    @IBOutlet weak var boomApp: UIImageView!
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        boomApp.alpha = 0
        backgroundImage.alpha = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(sender: AnyObject) {
        
        if button.titleLabel?.text == "Make me super cool!" {
            
            button.alpha = 0
            
            UIView.animateWithDuration(1.0) { () -> Void in
                
                self.boomApp.alpha = 1
                self.backgroundImage.alpha = 1
                self.button.alpha = 1
                
                self.button.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
                self.button.setTitle("Hide my coolness", forState: UIControlState.Normal)
                self.button.titleLabel?.font = UIFont.boldSystemFontOfSize(18)
                
            }
            
        } else if button.titleLabel?.text == "Hide my coolness" {
            
            self.button.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
            self.button.setTitle("Make me super cool!", forState: UIControlState.Normal)
            
            UIView.animateWithDuration(1.0, animations: { () -> Void in
                
                self.boomApp.alpha = 0
                self.backgroundImage.alpha = 0
                
            })
            
            
            
        }
        
        
        
    }

}


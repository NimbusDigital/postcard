//
//  ViewController.swift
//  Postcard
//
//  Created by Mark Williams on 01/02/2015.
//  Copyright (c) 2015 Nimbus Digital Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //this is an update to check git update
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        nameLabel.hidden=false
        messageLabel.text = enterMessageTextField.text
        nameLabel.text=enterNameTextField.text
        messageLabel.textColor = UIColor.redColor()
        nameLabel.textColor=UIColor.blueColor()
        
        enterMessageTextField.text=""
        enterMessageTextField.resignFirstResponder()
        enterNameTextField.text=""
        enterNameTextField.resignFirstResponder()
        
        
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }
    

}


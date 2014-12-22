//
//  ViewController.swift
//  Postcard
//
//  Created by Jessie Torres on 12/20/14.
//  Copyright (c) 2014 jessInteractive. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton)
    {
        //Code will evaluate when we press the button
        //Adding a comment here to test commit
        messageLabel.hidden = false;
        messageLabel.text = enterMessageTextField.text;
        messageLabel.textColor = UIColor.redColor();
        nameLabel.hidden = false;
        nameLabel.text = enterNameTextField.text;
        
        //clears the Enter Message and Message texts fields and closes keyboard
        enterMessageTextField.text = "";
        enterMessageTextField.resignFirstResponder();
        enterNameTextField.text = "";
        enterNameTextField.resignFirstResponder();
        
        //Changes title of the button
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal);
        
        
        
        
    }

}


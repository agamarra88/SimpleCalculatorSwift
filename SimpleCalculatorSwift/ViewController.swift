//
//  ViewController.swift
//  SimpleCalculatorSwift
//
//  Created by Arturo Gamarra on 11/28/15.
//  Copyright © 2015 DevCode.la. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    @IBOutlet weak var displayLabel: UILabel!
    var isUserTyping:Bool =  false;
    
    // MARK: - Actions
    @IBAction func buttonPressed(sender: UIButton) {
        let digit = sender.currentTitle!
        if (isUserTyping) {
            self.displayLabel.text = self.displayLabel.text! + digit;
        } else {
            self.isUserTyping = true;
            self.displayLabel.text = digit;
        }
    }
    
    @IBAction func deleteButtonTouched(sender: UIButton) {
        var currentText = self.displayLabel.text!;
        currentText.removeAtIndex(currentText.endIndex.predecessor())
        if (currentText == "") {
            self.displayLabel.text = "0";
            self.isUserTyping = false;
        } else {
            self.displayLabel.text = currentText;
        }
    }
    
    
}


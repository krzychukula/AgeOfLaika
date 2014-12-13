//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Krzysztof Kula on 12/12/14.
//  Copyright (c) 2014 Krzysztof Kula. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yearsTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertYears(sender: UIButton) {
        var years = Double(yearsTextField.text.toInt()!)
        let dogYears1 = 10.5
        let dogYears2 = 4.0
        
        var oldYears = years - 2;
        
        
        oldYears = (oldYears > 0) ? oldYears : 0
        years = (years <= 2 ) ? years : 2
        
        
        resultLabel.hidden = false
        resultLabel.text = "\(years * dogYears1 + oldYears * dogYears2) Dog Years"
        
        yearsTextField.resignFirstResponder()
    }

}


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
        var years = yearsTextField.text.toInt()!
        let dogYears = 7
        
        resultLabel.hidden = false
        resultLabel.text = "\(years * dogYears) Dog Years"
        
        yearsTextField.resignFirstResponder()
    }

}


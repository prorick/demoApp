//
//  ViewController.swift
//  tip
//
//  Created by Prothit Halder on 7/31/20.
//  Copyright © 2020 Prothit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var TipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func OnTap(_ sender: Any) {
        print("hello")
        
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: Any) {
        
        //Get bill Amount
        let bill = Double(billField.text!) ?? 0
        
        //Calculate the tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        
        
        let tip = bill * tipPercentages[TipControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        //Update the tip and total label
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
}


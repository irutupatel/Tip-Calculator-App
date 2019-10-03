//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Rutu Patel on 9/21/19.
//  Copyright © 2019 Rutu Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get Bill amount
        let billAmount = Double(billAmountField.text!) ?? 0
        
        let tipPercentages = [0.1,0.15,0.2]
        // Calculate tip and total
        let tip = billAmount * tipPercentages[tipControl.selectedSegmentIndex]
        let total = billAmount + tip

        // Update tip and total
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}


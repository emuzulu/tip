//
//  ViewController.swift
//  tip
//
//  Created by Evans Muzulu on 7/21/20.
//  Copyright © 2020 Evans Muzulu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var percentField: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        totalLabel.text = "$0"
        tipLabel.text = "$0"
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let tipPercentages = [0.15, 0.18, 0.2]
        let index = percentField.selectedSegmentIndex
        
        
        let percent = tipPercentages[index]
        //Get the bill amount
        let bill = Double(billField.text!) ?? 0
        let tip = bill * percent
        let total = bill + tip
        
        
        
        
        //Update outputs
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}


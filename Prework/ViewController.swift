//
//  ViewController.swift
//  Prework
//
//  Created by Ali Daho on 8/1/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        calculateTip(3)
    }

    @IBAction func calculateTip(_ sender: Any) {
        //Get bill amount from Text Field
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let tipPercentage = [0.15, 0.18, 0.20]
        let tip = bill *
            tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update tip amount label
        tipAmountLabel.text = (String(format: "$%.2f", tip))
        
        //Update total amount :
        totalLabel.text = String(format : "$%.2f", total)
        
        
    }
    
}


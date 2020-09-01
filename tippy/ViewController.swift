//
//  ViewController.swift
//  tippy
//
//  Created by Carroll, Rebecca on 8/30/20.
//  Copyright © 2020 Carroll, Rebecca. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel2: UILabel!
    @IBOutlet weak var TotalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onTap(_ sender: Any) {
        //print("Hello")
        view.endEditing(true)
    }
    
    //run when user taps in view field
    @IBAction func calculateTip(_ sender: Any) {
        //get bill amount
        let bill = Double(billField.text!) ?? 0 //uses optional !   the ?? 0 validates
        //get tip
        let tipPercentages = [0.1, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        //calculate  total
        tipLabel2.text = String(format: "$%.2f",tip)
        TotalLabel.text = String(format: "$%.2f",total)
    }
    
}


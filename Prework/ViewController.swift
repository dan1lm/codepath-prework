//
//  ViewController.swift
//  Prework
//
//  Created by Danil Merinov on 8/8/22.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    
    
    
    
    @IBOutlet weak var customTipLabel: UILabel!
    @IBOutlet weak var calculateTipSliderChanged: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.20]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
    @IBAction func calculateTipSliderChangedEvent(_ sender: Any) {
        
        customTipLabel.text  = String(format: "Custom Tip: %.0f%%", 100 * calculateTipSliderChanged.value)
        
        let tipPercentage1 = round(calculateTipSliderChanged.value * 100) / 100.00
        
        
        //let tipPercentage1 = Double(calculateTipSliderChanged.value)
        
        let bill1 = Double(billAmountTextField.text!) ?? 0
        let tip1 = bill1 * Double(tipPercentage1)
        let total1 = bill1 + tip1
        tipAmountLabel.text = String(format: "$%.2f", tip1)
        totalLabel.text = String(format: "$%.2f", total1)
        
        }
        
    }
    
    


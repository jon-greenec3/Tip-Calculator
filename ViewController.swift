//
//  ViewController.swift
//  tip calculator
//
//  Created by Windell Greene on 12/12/15.
//  Copyright © 2015 codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var totalTextLabel: UILabel!
    
    @IBOutlet weak var tipTextLabel: UILabel!
    
    @IBOutlet weak var tipText: UILabel!
    
    @IBOutlet weak var totalText: UILabel!
    
    @IBOutlet weak var equalsBar: UIView!
    
    @IBOutlet weak var tipPercent: UISegmentedControl!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        billField.becomeFirstResponder()
        self.totalTextLabel.alpha = 1
        UIView.animateWithDuration(1,animations:{
            self.totalTextLabel.alpha = 0
        })
        billField.becomeFirstResponder()
        self.tipTextLabel.alpha = 1
        UIView.animateWithDuration(1,animations:{
            self.tipTextLabel.alpha = 0
        })
        billField.becomeFirstResponder()
        self.tipText.alpha = 1
        UIView.animateWithDuration(1,animations:{
            self.tipText.alpha = 0
        })
        billField.becomeFirstResponder()
        self.totalText.alpha = 1
        UIView.animateWithDuration(1,animations:{
            self.totalText.alpha = 0
        })
        billField.becomeFirstResponder()
        self.equalsBar.alpha = 1
        UIView.animateWithDuration(1,animations:{
            self.equalsBar.alpha = 0
        })
        billField.becomeFirstResponder()
        self.tipPercent.alpha = 1
        UIView.animateWithDuration(1,animations:{
            self.tipPercent.alpha = 0
        })
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func billFieldEditingChanged(sender: AnyObject) {
        print("Calling the onEditingChanged method")
        
        billField.becomeFirstResponder()
        self.totalTextLabel.alpha = 0
        UIView.animateWithDuration(1,animations:{
            self.totalTextLabel.alpha = 1
        })
        billField.becomeFirstResponder()
        self.tipTextLabel.alpha = 0
        UIView.animateWithDuration(1,animations:{
            self.tipTextLabel.alpha = 1
        })
        billField.becomeFirstResponder()
        self.tipText.alpha = 0
        UIView.animateWithDuration(1,animations:{
            self.tipText.alpha = 1
        })
        billField.becomeFirstResponder()
        self.totalText.alpha = 0
        UIView.animateWithDuration(1,animations:{
            self.totalText.alpha = 1
        })
        billField.becomeFirstResponder()
        self.equalsBar.alpha = 0
        UIView.animateWithDuration(1,animations:{
            self.equalsBar.alpha = 1
        })
        billField.becomeFirstResponder()
        self.tipPercent.alpha = 0
        UIView.animateWithDuration(1,animations:{
            self.tipPercent.alpha = 1
        })
        
        let tipPercentages = [0.18, 0.2, 0.22]
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
            
        let billAmount = NSString(string: billField.text!).doubleValue
        let tip = billAmount * tipPercentage
        let total = billAmount + tip
            
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }

}


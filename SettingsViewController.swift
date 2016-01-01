//
//  SettingsViewController2.swift
//  
//
//  Created by Windell Greene on 12/31/15.
//
//

import UIKit

class SettingsViewController2: UIViewController {
    
    @IBOutlet weak var defaultTipPercentage: UISegmentedControl
    
    override func viewWillAppear() {
        super.viewWillAppear()
        print("view will appear")
        
        // Do any additional setup after loading the view.
    }


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear() {
        super.viewDidAppear()
        print("view did appear")
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillDisappear() {
        super.viewWillDisappear()
        print("view will disappear")
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDIdDisappear() {
        super.viewDidDisappear()
        print("view did disappear")
        
        // Do any additional setup after loading the view.
    }
    



    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func defaultTipPercentageValueChanged (sender: AnyObject?) {
        
        func eighteenPercent () {
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setDouble(0.18, forKey: "default_tip_percentage")
            defaults.synchronize()
        }
        
        func twentyPercent () {
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setDouble(0.2, forKey: "default_tip_percentage")
            defaults.synchronize()
        }
        
        func twentyTwoPercent () {
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setDouble(0.22, forKey: "default_tip_percentage")
            defaults.synchronize()
        }
        
        let defaults = NSUserDefaults.standardUserDefaults()
        let defaultTipPercentage = defaults.doubleForKey("default_tip_percentage")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

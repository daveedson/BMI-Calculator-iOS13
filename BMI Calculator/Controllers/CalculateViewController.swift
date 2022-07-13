//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func heightSliderChange(_ sender: UISlider) {
        let height = String(format: "%.2f" ,sender.value)
        heightLabel.text = "\(height)m"
        
    }
    
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let intValue:Int = Int(sender.value)
        weightLabel.text =   String("\(intValue)Kg")
    }
    
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        
        let bmi = weight / pow(height, 2)
        
        let convertedbmi = String(format: "%.2f" ,bmi)
        
        print(convertedbmi)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
}



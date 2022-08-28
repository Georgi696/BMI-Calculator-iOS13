//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var sliderHeight: UISlider!
    @IBOutlet weak var sliderWeight: UISlider!
    @IBOutlet weak var heightText: UILabel!
    @IBOutlet weak var weightText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSlide(_ sender: UISlider) {
        sliderHeight.value = sender.value + 0.1
        heightText.text = String(format: "%.2f", sender.value)

    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        sliderWeight.value = sender.value + 1
        weightText.text = String(format: "%.0f", sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = sliderHeight.value
        let weight = sliderWeight.value
        var bmi = weight / pow(height,2)
        print(bmi)
    }
    
    
}


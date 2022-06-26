//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Олег Сосницкий on 23.06.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var sliderRedColor: UISlider!
    @IBOutlet var sliderGreenColor: UISlider!
    @IBOutlet var sliderBlueColor: UISlider!
    
    @IBOutlet var redColorValue: UILabel!
    @IBOutlet var greenColorValue: UILabel!
    @IBOutlet var blueColorValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sliderRedColor.minimumTrackTintColor = .red
        sliderBlueColor.minimumTrackTintColor = .blue
        sliderGreenColor.minimumTrackTintColor = .green
        
    }
    @IBAction func sliderAction(_ sender: UISlider) {
        let backgroundColor = UIColor(
            red: CGFloat(sliderRedColor.value),
            green: CGFloat(sliderGreenColor.value),
            blue: CGFloat(sliderBlueColor.value),
            alpha: 1
        )
        colorView.backgroundColor = backgroundColor
        
        switch sender.self {
        case sliderRedColor:
            redColorValue.text = String(format: "%.2f", sender.value)
        case sliderGreenColor:
            greenColorValue.text = String(format: "%.2f", sender.value)
        default:
            blueColorValue.text = String(format: "%.2f", sender.value)
        }
        
    }
}


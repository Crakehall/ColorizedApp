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

        }
        
    

}


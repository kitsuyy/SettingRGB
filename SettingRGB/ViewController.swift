//
//  ViewController.swift
//  SettingRGB
//
//  Created by Kirill Lozovoi on 9/24/22.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet var rgbView: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rgbView.layer.cornerRadius = 20
        blueValueChanged()
        greenValueChanged()
        redValueChanged()
    }
    
    //MARK: Actions
    
    @IBAction func blueValueChanged() {
        blueValue = blueSlider.value
        changeRGBView()
    }
    @IBAction func greenValueChanged() {
        greenValue = greenSlider.value
        changeRGBView()
    }
    @IBAction func redValueChanged() {
        redValue = redSlider.value
        changeRGBView()
    }
    
    //MARK: Private
    
    private var redValue = Float() {
        didSet {
            redValueLabel.text = String(format: "%.2f", redSlider.value)
        }
    }
    
    private var greenValue = Float() {
        didSet {
            greenValueLabel.text = String(format: "%.2f", greenSlider.value)
        }
    }
    
    private var blueValue = Float() {
        didSet {
            blueValueLabel.text = String(format: "%.2f", blueSlider.value)
        }
    }
    
    private func changeRGBView() {
        rgbView.backgroundColor = UIColor(
            red: CGFloat(redValue),
            green: CGFloat(greenValue),
            blue: CGFloat(blueValue),
            alpha: 1)
    }
}




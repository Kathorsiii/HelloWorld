//
//  ViewController.swift
//  HelloWorld
//
//  Created by John Christian Garon on 7/9/21.
//  Copyright © 2021 Alpha Developers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var helloWorldLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBAction func tapMeAction(_ sender: UIButton) {
        helloWorldLabel.text = "Hello Swift!"
    }
    
    @IBAction func resetAction(_ sender: UIButton) {
        let alert = UIAlertController(title: "Reset", message: "Reset the label?", preferredStyle:  .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {(action) -> Void in
            self.helloWorldLabel.text = "Hello World"
            self.textField.text = ""
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func sayHelloAction(_ sender: UIButton) {
        helloWorldLabel.text = "\(String(helloWorldLabel.text!))\(String(textField.text!))"
    }
    
    var redNum: Float = 0.00
    var greenNum: Float = 0.00
    var blueNum: Float = 0.00
    
    @IBAction func redSliderAction(_ sender: UISlider) {
        redNum = sender.value
        helloWorldLabel.textColor = UIColor.init(displayP3Red: CGFloat(redNum), green: CGFloat(greenNum), blue: CGFloat(blueNum), alpha: 1.0)
    }
    
    @IBAction func greenSliderAction(_ sender: UISlider) {
        greenNum = sender.value
        helloWorldLabel.textColor = UIColor.init(displayP3Red: CGFloat(redNum), green: CGFloat(greenNum), blue: CGFloat(blueNum), alpha: 1.0)
    }
    
    @IBAction func blueSliderAction(_ sender: UISlider) {
        blueNum = sender.value
        helloWorldLabel.textColor = UIColor.init(displayP3Red: CGFloat(redNum), green: CGFloat(greenNum), blue: CGFloat(blueNum), alpha: 1.0)
    }
    
    @IBAction func pickColorAction(_ sender: UIButton) {
        let actionSheet = UIAlertController(title: "Pick Color", message: "", preferredStyle: .actionSheet)
        
        actionSheet.addAction(UIAlertAction(title: "Red", style: .default, handler: {action -> Void in
            self.helloWorldLabel.textColor = UIColor.red
            self.redSlider.value = 1.0
            self.greenSlider.value = 0.0
            self.blueSlider.value = 0.0
        }))
        
        actionSheet.addAction(UIAlertAction(title: "Green", style: .default, handler: {action -> Void in
            self.helloWorldLabel.textColor = UIColor.green
            self.greenSlider.value = 1.0
            self.redSlider.value = 0.0
            self.blueSlider.value = 0.0
        }))
        
        actionSheet.addAction(UIAlertAction(title: "Blue", style: .default, handler: {action -> Void in
            self.helloWorldLabel.textColor = UIColor.blue
            self.blueSlider.value = 1.0
            self.redSlider.value = 0.0
            self.greenSlider.value = 0.0
        }))
        
        present(actionSheet, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        // To dismiss the keyboard on tap
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
}

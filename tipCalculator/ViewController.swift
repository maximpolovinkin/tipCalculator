//
//  ViewController.swift
//  tipCalculator
//
//  Created by Максим Половинкин on 14.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var twentyProcentButton: UIButton!
    @IBOutlet weak var tenProcentButton: UIButton!
    @IBOutlet weak var zeroProcentButton: UIButton!
    @IBOutlet weak var compliteButton: UIButton!
    @IBOutlet weak var friendsCount: UILabel!
    @IBOutlet weak var totalText: UITextField!
    
    var tip = 0.0
    var total = 0.0
    var friendsCounter = 1
    var billTotal = ""
 
    
    @IBAction func tipButtonClicked(_ sender: UIButton) {
        twentyProcentButton.isSelected = false
        tenProcentButton.isSelected = false
        zeroProcentButton.isSelected = false
    
        sender.isSelected = true
        
        let title =  String(sender.titleLabel!.text!)
        let tip = Double(title.dropLast())! / 100
        self.tip = tip
       
        
    }
    
    @IBAction func textClicked(_ sender: UITextField) {
        sender.becomeFirstResponder()
        sender.keyboardType = UIKeyboardType.numberPad
    }
    
    @IBAction func stepperChanged(_ sender: UIStepper) {
        friendsCount.text = String(format:"%.0f", sender.value)
        friendsCounter =  Int(String(format:"%.0f", sender.value))!
    }
    
    
    @IBAction func calcPressed(_ sender: UIButton) {
      let result =  String(Double(totalText.text!)! * (1+self.tip) / Double(self.friendsCounter))
        performSegue(withIdentifier: "goResult", sender: self)
       billTotal = result
    }
    
    
   
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        compliteButton.layer.cornerRadius = 20
        totalText.borderStyle = UITextField.BorderStyle.none
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goResult"{
            let destinationVC = segue.destination as! ResultVievControllerViewController
            destinationVC.resLabelTitle = billTotal
        }
    }
   
    
    
}


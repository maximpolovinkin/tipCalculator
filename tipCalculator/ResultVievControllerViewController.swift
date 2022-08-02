//
//  ResultVievControllerViewController.swift
//  tipCalculator
//
//  Created by Максим Половинкин on 14.07.2022.
//

import UIKit

class ResultVievControllerViewController: UIViewController {

    @IBOutlet weak var recalcButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    var resLabelTitle = ""
    
    
    override func viewDidLoad() {
        print(resLabelTitle)
        super.viewDidLoad()
        resultLabel.text = resLabelTitle
        recalcButton.layer.cornerRadius = 20
    
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}

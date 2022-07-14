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
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = resLabelTitle
        recalcButton.layer.cornerRadius = 20
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

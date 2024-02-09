//
//  ViewController.swift
//  CalculateATip
//
//  Created by Pauline on 08/02/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfInput: UITextField!
    @IBOutlet weak var scTipPercentage: UISegmentedControl!
    @IBOutlet weak var lblTotal: UILabel!
    let percentages = [0.1, 0.15, 0.2, 0.25]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func doBtnCalc(_ sender: Any) {
        calcTip()
    }
    //also do in obejectionable bonding or guard statements
    func calcTip(){
        let billAmt = Double(tfInput.text ?? "0.0") ?? 0.0
        let selectedIndex = scTipPercentage.selectedSegmentIndex
        let tipPercentage = percentages[selectedIndex]
        let tip = billAmt * tipPercentage
        let total = billAmt + tip
        lblTotal.text = "Total: \(total)"
    }
}


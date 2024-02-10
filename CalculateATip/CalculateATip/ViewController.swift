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
    let numFormatter = NumberFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        numFormatter.numberStyle = .currency
        
    }

    @IBAction func doBtnCalc(_ sender: Any) {
        calcTip()
    }
    //also do in obejectionable bonding or guard statements
    @IBAction func doSCChanged(_ sender: Any) {
        calcTip()
    }
    
    
    @IBAction func doTFChange(_ sender: Any) {
        calcTip()
        
    }
    
    
    func calcTip(){
        let billAmt = Double(tfInput.text ?? "0.0") ?? 0.0
        let selectedIndex = scTipPercentage.selectedSegmentIndex
        let tipPercentage = percentages[selectedIndex]
        let tip = billAmt * tipPercentage
        let total = billAmt + tip
        let totalStr = numFormatter.string(for: total) ?? ""
        lblTotal.text = "Total: \(totalStr)"
    }
}


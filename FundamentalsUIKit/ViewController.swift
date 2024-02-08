//
//  ViewController.swift
//  FundamentalsUIKit
//
//  Created by Pauline on 06/02/2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelOutput: UILabel!
    @IBOutlet weak var UiSearch: UILabel!
    @IBOutlet weak var UIButton: UIButton!
    
    let lbl = UILabel(frame: CGRect(x: 100, y: 200, width: 80, height: 40))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        labelOutput.text = "Hi again"
        
        lbl.text = "in code"
        view.addSubview(lbl)
    }

    @IBAction func doButtonGo(_ sender: Any) {
        labelOutput.text = UiSearch.text
    }
    
}


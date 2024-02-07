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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        labelOutput.text = "Hi again"
    }

    @IBAction func doButtonGo(_ sender: Any) {
        labelOutput.text = UiSearch.text
    }
    
}


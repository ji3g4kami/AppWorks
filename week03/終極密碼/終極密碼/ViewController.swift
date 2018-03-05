//
//  ViewController.swift
//  終極密碼
//
//  Created by 吳登秝 on 2018/3/5.
//  Copyright © 2018年 DavidWu. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var rangeLabel: UILabel!
    
    var runningNumber = ""
    var targetNumber = 49
    var upperNumber = 100
    var lowerNumber = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func numberPressed(_ sender: RoundButton) {
        if runningNumber == "請輸入數字" {
            runningNumber = ""
        }
        
        runningNumber += "\(sender.tag)"
        outputLabel.text = runningNumber
    }
    
    @IBAction func allClearPressed(_ sender: RoundButton) {
        runningNumber = "請輸入數字"
        outputLabel.text = runningNumber
    }
    @IBAction func submitPressed(_ sender: RoundButton) {
        if let validInput = Int(runningNumber) {
            if validInput == targetNumber {
                runningNumber = "恭喜答對！"
                outputLabel.text = runningNumber
                lowerNumber = 1
                upperNumber = 100
                rangeLabel.text = "\(lowerNumber)~\(upperNumber)"
                targetNumber = Int(arc4random_uniform(100))
            } else if validInput > targetNumber {
                upperNumber = validInput
                rangeLabel.text = "\(lowerNumber)~\(upperNumber)"
                runningNumber = "請輸入數字"
                outputLabel.text = runningNumber
            } else {
                lowerNumber = validInput
                rangeLabel.text = "\(lowerNumber)~\(upperNumber)"
                runningNumber = "請輸入數字"
                outputLabel.text = runningNumber
            }
        }
    }

}


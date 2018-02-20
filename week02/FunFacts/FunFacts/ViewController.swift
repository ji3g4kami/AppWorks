//
//  ViewController.swift
//  FunFacts
//
//  Created by 吳登秝 on 2018/2/19.
//  Copyright © 2018年 DavidWu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    @IBOutlet weak var assignmentLabel: UILabel!
    
    let factProvider = FactProvider()
    let colorProvider = BackgroundColorProvider()
    let assignmentProvider = AssignmentProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        funFactLabel.text = factProvider.randomFact()
        assignmentLabel.text = assignmentProvider.randomAssignment()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFact() {
        funFactLabel.text = factProvider.randomFact()
        let randomColor = colorProvider.randomColor()
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
        assignmentLabel.text = assignmentProvider.randomAssignment()
    }
    
}


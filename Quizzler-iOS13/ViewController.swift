//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  exercises done by tashi Jain 2020 based on course by Angela
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    
    let quiz = [
            "abc",
            "bh",
            "hhu"
        ]
    var questionNum = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        questionNum += 1
        updateUI()
    }
    
    func updateUI() {
        questionLabel.text = quiz[questionNum]
    }
    
}


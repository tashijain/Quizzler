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
            ["Four plus two equals six", "True"] ,
            ["Trump is the Prime Minister of USA", "False"] ,
            ["Vancouver is in India", "False"]]
    var questionNum = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNum][1]
        
        if userAnswer == actualAnswer {
            print("Right!")
        } else {
            print("Wrong!")
        }
        if questionNum < quiz.count-1 {
            questionNum += 1
        } else {
            questionNum = 0
        }
        updateUI()
    }
    
    func updateUI() {
        questionLabel.text = quiz[questionNum][0]
    }
    
}


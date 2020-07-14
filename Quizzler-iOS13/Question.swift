//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Tashi Jain on 2020-07-13.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}

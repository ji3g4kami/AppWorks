//
//  AssignmentProvider.swift
//  FunFacts
//
//  Created by 吳登秝 on 2018/2/20.
//  Copyright © 2018年 DavidWu. All rights reserved.
//

import GameKit

struct AssignmentProvider {
    let text = [
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus.",
        "Contrary to popular belief, Lorem Ipsum is not simply random text.",
        "Richard McClintock, a Latin professor at Hampden-Sydney College in ",
        "looked up one of the more obscure Latin words, consectetur",
        "from a Lorem Ipsum passage, and going through the cites of the word",
        "This book is a treatise on the theory of ethics, very popular during the.",
        "The first line of Lorem Ipsum, Lorem ipsum dolor sit amet..",
        "The standard chunk of Lorem Ipsum used since the 1500s is reproduced.",
        "There are many variations of passages of Lorem Ipsum available.",
        "but the majority have suffered alteration in some form"
    ]
    
    func randomAssignment() -> String {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: text.count)
        return text[randomNumber]
    }
}

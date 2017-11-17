//
//  MakeVoteModel.swift
//  MiniVote
//
//  Created by Jung seoung Yeo on 2017. 11. 16..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

import Foundation

class MakeVoteMdoel{
    
    var json : Dictionary<String, Any>
    
    init(title: String, choices: Array<String>) {
        self.json = ["Body" :[
                        "Title"  : title,
                        "Choices": choices ] ]
    }
}



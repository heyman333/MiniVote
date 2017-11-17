//
//  MakeController.swift
//  MiniVote
//
//  Created by Jung seoung Yeo on 2017. 11. 13..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class MakeController: UIViewController,UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate {
    
    var countVote : Int = 1
    var titleJson : String = ""
    var choices = Array<String>()
    var indexPath = Array<IndexPath>()

    @IBOutlet weak var makeListOutLet: UIButton!
    @IBOutlet weak var makeVoteTable: UITableView!
    @IBOutlet weak var voteTitle: UITextField!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countVote
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = makeVoteTable.dequeueReusableCell(withIdentifier: "VoteCell", for: indexPath) as! MakeCustomCell
       
        for _ in indexPath {
            self.indexPath.append(indexPath)
        }
        
        
        
        return cell
    }
    
    @IBAction func makeVoteButton(_ sender: Any) {
        
        print(self.indexPath.count)
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        initSetting()
    
        
        
//         titleJson = "오늘 뭐 먹지?"
//         choices = ["돈까스","치킨","피자"]
//        let parameter = MakeVoteMdoel(title: titleJson, choices: choices)
//
//        print(parameter.json)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    func initSetting(){
        makeListOutLet.backgroundColor = UIColor(red: 10/255.0, green: 124/255.0, blue: 159/255.0, alpha: 1.0)
        makeVoteTable.delegate = self
        makeVoteTable.dataSource = self
        voteTitle.delegate = self
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        makeVoteTable.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        voteTitle.resignFirstResponder()
        return true
    }
    
    @IBAction func VoteAdd(_ sender: Any) {
        countVote = countVote + 1
        makeVoteTable.reloadData()
    }

}

//
//  MakeCustomCell.swift
//  MiniVote
//
//  Created by Jung seoung Yeo on 2017. 11. 15..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

import UIKit

class MakeCustomCell: UITableViewCell, UITextFieldDelegate {

   
    @IBOutlet weak var itemInput: UITextField!
    override func awakeFromNib() {
        super.awakeFromNib()
        itemInput.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldDelegate")
        itemInput.resignFirstResponder()
        
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
}

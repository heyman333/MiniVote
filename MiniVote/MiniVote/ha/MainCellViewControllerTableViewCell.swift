//
//  MainCellViewControllerTableViewCell.swift
//  MiniVote
//
//  Created by Hyunah on 2017. 11. 11..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

import UIKit

class MainCellViewControllerTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var regidateLabel: UILabel!
    
    @IBOutlet weak var Qimge: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

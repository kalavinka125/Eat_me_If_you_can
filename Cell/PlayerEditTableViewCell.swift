//
//  PlayerEditTableViewCell.swift
//  EatmeIfyoucan
//
//  Created by sotuken on 2017/12/14.
//  Copyright © 2017年 sotuken. All rights reserved.
//

import UIKit

class PlayerEditTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func editPlayerNameTapped(_ sender: Any) {
        
    }
    
}

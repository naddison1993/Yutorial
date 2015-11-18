//
//  YutorialTableCell.swift
//  Yutorial
//
//  Created by Nathan Addison on 11/18/15.
//  Copyright (c) 2015 Nathan Addison. All rights reserved.
//

import UIKit

class YutorialTableCell: UITableViewCell {
    
    @IBOutlet weak var tutorialName: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

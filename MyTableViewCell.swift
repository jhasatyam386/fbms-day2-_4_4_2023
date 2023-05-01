//
//  MyTableViewCell.swift
//  fbms day2 _4_4_2023
//
//  Created by R&W on 16/04/35.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

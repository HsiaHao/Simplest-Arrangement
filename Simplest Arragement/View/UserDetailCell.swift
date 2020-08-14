//
//  UserDetailCell.swift
//  Simplest Arragement
//
//  Created by 夏英浩 on 8/14/20.
//  Copyright © 2020 夏英浩. All rights reserved.
//

import UIKit

class UserDetailCell: UITableViewCell {

    
    @IBOutlet weak var clockButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var stateImage: UIImageView!
    @IBOutlet weak var detailLbale: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    @IBAction func clockButtonClicked(_ sender: UIButton) {
        print("clock button pressed")
    }
    
    @IBAction func viewButtonPressed(_ sender: UIButton) {
        print("view button pressed")
        detailLbale.lineBreakMode = .byWordWrapping
        detailLbale.numberOfLines = 0
    }
}

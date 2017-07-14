//
//  PostActionCell.swift
//  Makestagram
//
//  Created by Vineeth on 7/13/17.
//  Copyright © 2017 Vineeth. All rights reserved.
//

import UIKit

class PostActionCell: UITableViewCell {

    static let height: CGFloat = 46
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

   
    @IBOutlet weak var timeAgoLabel: UILabel!
    @IBOutlet weak var numberofLikes: UILabel!

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func likeButtonPressed(_ sender: Any) {
    }

}

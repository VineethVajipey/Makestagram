//
//  PostActionCell.swift
//  Makestagram
//
//  Created by Vineeth on 7/13/17.
//  Copyright © 2017 Vineeth. All rights reserved.
//

import UIKit

protocol PostActionCellDelegate: class {
    func didTapLikeButton(_ likeButton: UIButton, on cell: PostActionCell)
}

class PostActionCell: UITableViewCell {

    weak var delegate: PostActionCellDelegate?
    static let height: CGFloat = 46
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

   
    @IBOutlet weak var likeCountLabel: UILabel!
    @IBOutlet weak var timeAgoLabel: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func likeButtonTapped(_ sender: UIButton) {
        delegate?.didTapLikeButton(sender, on: self)
    }
}

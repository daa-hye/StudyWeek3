//
//  ReviewingTableViewCell.swift
//  StudyWeek3
//
//  Created by 박다혜 on 2023/07/30.
//

import UIKit

class ReviewingTableViewCell: UITableViewCell {


    @IBOutlet var checkImage: UIImageView!
    @IBOutlet var stuffLabel: UILabel!
    @IBOutlet var likeButton: UIButton!

    func setRow(_ row: Buying) {
        if row.check {
            checkImage.image = UIImage(systemName: "checkmark.diamond.fill")
        } else {
            checkImage.image = UIImage(systemName: "checkmark.diamond")
        }

        stuffLabel.text = row.stuff

        if row.like {
            likeButton.setImage(UIImage(systemName: "heart.fill"), for: .normal)
        } else {
            likeButton.setImage(UIImage(systemName: "heart"), for: .normal)
        }
    }

}

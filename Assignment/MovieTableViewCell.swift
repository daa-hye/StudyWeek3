//
//  MovieTableViewCell.swift
//  StudyWeek3
//
//  Created by 박다혜 on 2023/07/28.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    static let identifier = "MovieTableViewCell"


    @IBOutlet var posterImageView: UIImageView!
    @IBOutlet var movieTitleLabel: UILabel!
    @IBOutlet var releaseDateLabel: UILabel!
    @IBOutlet var runtimeLabel: UILabel!
    @IBOutlet var rateLabel: UILabel!
    @IBOutlet var overviewLabel: UILabel!

    func configuration(_ row: Movie) {
        movieTitleLabel.text = row.title
        releaseDateLabel.text = row.releaseDate
        runtimeLabel.text = "\(row.runtime)"
        rateLabel.text = "\(row.rate)"
        overviewLabel.text = row.overview
        posterImageView.image = UIImage(named: "\(row.title)")
    }

}

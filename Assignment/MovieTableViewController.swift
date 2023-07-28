//
//  MovieTableViewController.swift
//  StudyWeek3
//
//  Created by 박다혜 on 2023/07/28.
//

import UIKit

class MovieTableViewController: UITableViewController {

    let movieInfo = MovieInfo()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 200
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieInfo.movieList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MovieTableViewCell.identifier) as! MovieTableViewCell
        let row = movieInfo.movieList[indexPath.row]
        cell.configuration(row)
        return cell
    }

}

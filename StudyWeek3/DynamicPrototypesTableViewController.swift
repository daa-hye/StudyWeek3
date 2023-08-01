//
//  DynamicPrototypesTableViewController.swift
//  StudyWeek3
//
//  Created by 박다혜 on 2023/07/27.
//

import UIKit

class DynamicPrototypesTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return SettingList.allCases.count
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return SettingList.allCases[section].mainSetting
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SettingList.allCases[section].subSetting.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "dynamicCell") else {
            return UITableViewCell()
        }
        cell.textLabel?.text = SettingList.allCases[indexPath.section].subSetting[indexPath.row]
        return cell
    }

    

}

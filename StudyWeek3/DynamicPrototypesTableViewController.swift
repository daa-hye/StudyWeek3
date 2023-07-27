//
//  DynamicPrototypesTableViewController.swift
//  StudyWeek3
//
//  Created by 박다혜 on 2023/07/27.
//

import UIKit

class DynamicPrototypesTableViewController: UITableViewController {

    let headerList = ["전체 설정", "개인 설정", "기타"]
    let settingList = [["공지사항", "실험실","버전 정보"], ["개인/보안", "알림", "채팅", "멀티프로필"], ["고객센터/도움말"]]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return headerList[section]
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingList[section].count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dynamicCell")
        cell?.textLabel?.text = settingList[indexPath.section][indexPath.row]
        return cell!
    }

    

}

//
//  CustomTableViewController.swift
//  StudyWeek3
//
//  Created by 박다혜 on 2023/07/28.
//

import UIKit

class CustomTableViewController: UITableViewController {

    @IBOutlet var searchBar: UISearchBar!

    var todo = ToDoInformation() {
        didSet { //변수가 달라짐을 감지
            print("갱신")
            tableView.reloadData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
        searchBar.placeholder = "할 일을 입력해보세요"
        searchBar.searchTextField.addTarget(self, action: #selector(searchBarReturnTapped), for: .editingDidEndOnExit)
    }

    @objc func searchBarReturnTapped() {
        //ToDo 항목을 list에 추가
        let data = ToDo(main: searchBar.text!, sub: "23.08.01", like: false, done: false)
        todo.list.insert(data, at: 0)
        //UX
        searchBar.text = ""
        //갱신
        //tableView.reloadData()
    }

    //1.
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todo.list.count
    }

    //2.
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier) as! CustomTableViewCell

        let row = todo.list[indexPath.row]

        cell.configureCell(row: row)

        cell.likeButton.tag = indexPath.row
        cell.likeButton.addTarget(self, action: #selector(likeButtonClicked), for: .touchUpInside)

        return cell
    }

    @objc
    func likeButtonClicked(_ sender: UIButton) {
        print("clicked \(sender.tag)")
        todo.list[sender.tag].like.toggle()
        //tableView.reloadData()
    }

    //3.
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
    }

    //삭제
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        //제거 -> 갱신
        todo.list.remove(at: indexPath.row)
        //tableView.reloadData()
    }

}

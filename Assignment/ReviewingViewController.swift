//
//  ReviewingViewController.swift
//  StudyWeek3
//
//  Created by 박다혜 on 2023/07/30.
//

import UIKit

class ReviewingViewController: UITableViewController {

    @IBOutlet var inputTextField: UITextField!
    @IBOutlet var addButton: UIButton!

    var buyigList = BuyingList()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 70
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        buyigList.list.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReviewingTableViewCell") as! ReviewingTableViewCell
        let row = buyigList.list[indexPath.row]
        cell.setRow(row)
        return cell
    }

    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        buyigList.list.remove(at: indexPath.row)
        tableView.reloadData()
    }

    @IBAction func addButtonDidTap(_ sender: UIButton) {
        if let inputText = inputTextField.text, inputText != "" {
            buyigList.list.append(Buying(check: false, stuff: inputText, like: false))
            inputTextField.endEditing(true)
            inputTextField.text = nil
            tableView.reloadData()
            
        } else {
            let error = UIAlertController(title: "내용을 입력해주세요", message: nil, preferredStyle: .alert)
            let confirm = UIAlertAction(title: "확인", style: .cancel)
            error.addAction(confirm)
            present(error, animated: true)
        }
    }

    @IBAction func returnButtonDidTap(_ sender: UITextField) {
        addButtonDidTap(addButton)
    }



}

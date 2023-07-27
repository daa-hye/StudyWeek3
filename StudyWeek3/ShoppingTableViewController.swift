//
//  ShoppingTableViewController.swift
//  StudyWeek3
//
//  Created by 박다혜 on 2023/07/27.
//

import UIKit

class ShoppingTableViewController: UITableViewController {

    @IBOutlet var addTextField: UITextField!
    @IBOutlet var addButton: UIButton!

    //var shoppingList = [String]()
    var shoppingList = ["그립톡 구매하기", "사이다 구매"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func addButtonDidTap(_ sender: UIButton) {
        guard let stuff = addTextField.text else { return }
        shoppingList.append(stuff)
        addTextField.endEditing(true)
        tableView.reloadData()
    }

    @IBAction func keyboardReturnDidTap(_ sender: UITextField) {
        addButtonDidTap(addButton)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shoppingList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "shoppingCell")
        cell?.textLabel?.text = shoppingList[indexPath.row]
        return cell!
    }

}

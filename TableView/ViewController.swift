//
//  ViewController.swift/Users/admin/Documents/5806021622042/TableView/TableView/DetailViewController.swift
//  TableView
//
//  Created by Admin on 12/2/2562 BE.
//  Copyright © 2562 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet var tableView: UITableView!
    let cellIdentifier = "Cell"
    let items = ["Albert", "Beryl", "Charlie", "Derek", "Fon", "Mind", "Top", "Nan"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailViewController = segue.destination as! DetailViewController
            
            detailViewController.name = items[indexPath.row]
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath as IndexPath)
        cell.textLabel!.text = items[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You select index \(indexPath.row) (\(items[indexPath.row]))")
    }

}


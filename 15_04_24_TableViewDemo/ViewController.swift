//
//  ViewController.swift
//  15_04_24_TableViewDemo
//
//  Created by Vishal Jagtap on 06/05/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var foodItemsTableView: UITableView!
    var foodItems : [String] = ["samosa","pattice","upma","khichadi","pohe"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        foodItemsTableView.dataSource = self
        foodItemsTableView.delegate = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.foodItemsTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = foodItems[indexPath.row]
        if indexPath.section == 0{
            cell.backgroundColor = .orange
        }else {
            cell.backgroundColor = .cyan
        }
//        cell.textLabel!.text = "bitcode" + indexPath.section.codingKey.stringValue + indexPath.row.codingKey.stringValue
        return cell
    }
}

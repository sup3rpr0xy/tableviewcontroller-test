//
//  MyTableVC.swift
//  tableviewcontroller-test
//
//  Created by Alfred Thomas Torres on 23/3/16.
//  Copyright © 2016 Devslopes. All rights reserved.
//

import UIKit

class MyTableVC: UITableViewController {

    var cars = ["BMW", "Ford", "Chevy", "Volvo", "Subaru"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("carCell", forIndexPath: indexPath)

        cell.textLabel?.text = cars[indexPath.row]
        cell.detailTextLabel?.text = "I like my \(cars[indexPath.row])"

        return cell
    }
}

//
//  PersonsTableViewController.swift
//  PersonsList
//
//  Created by Julia on 13.10.2021.
//

import UIKit

class PersonsTableViewController: UITableViewController {
    
    var person: [Person]!
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        person.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = person[indexPath.row].fullName
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        45
    }
    
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let informationPersonVC = segue.destination as! InformationPersonViewController
        informationPersonVC.personInformation = person[indexPath.row]
    }
}

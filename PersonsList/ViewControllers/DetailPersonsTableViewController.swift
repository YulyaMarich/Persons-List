//
//  DetailPersonsTableViewController.swift
//  PersonsList
//
//  Created by Julia on 14.10.2021.
//

import UIKit

class DetailPersonsTableViewController: UITableViewController {
    
    var person: [Person]!
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        person.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView.init(frame: CGRect(x: 0,
                                             y: 0,
                                             width: tableView.frame.width,
                                             height: 30))
        view.backgroundColor = UIColor.systemBlue
        
        let label = UILabel()
        label.frame = CGRect(x: 55,
                             y: 5,
                             width: view.frame.width-10,
                             height:view.frame.height-10)
        label.text = person[section].fullName
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .white
        
        view.addSubview(label)
        
        return view
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellTwo", for: indexPath)
        
        if indexPath.row == 0 {
            cell.textLabel?.font = UIFont(name: "Damascus", size: 18)
            cell.textLabel?.text = person[indexPath.section].phoneNumber
            cell.imageView?.image = UIImage(systemName: "phone")
        } else if indexPath.row == 1 {
            cell.textLabel?.font = UIFont(name: "Damascus", size: 18)
            cell.textLabel?.text = person[indexPath.section].mail
            cell.imageView?.image = UIImage(systemName: "envelope")
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}


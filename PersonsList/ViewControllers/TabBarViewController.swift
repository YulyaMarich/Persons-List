//
//  TabBarViewController.swift
//  PersonsList
//
//  Created by Julia on 14.10.2021.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    private var persons = Person.createRandomPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let viewControllers = viewControllers else { return }
        
        for controller in viewControllers {
            if let detailPersonVC = controller as? DetailPersonsTableViewController {
                detailPersonVC.person = persons
            } else if let personsVC = controller as? PersonsTableViewController {
                personsVC.person = persons
            }
        }
    }
}

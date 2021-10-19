//
//  InformationPersonViewController.swift
//  PersonsList
//
//  Created by Julia on 14.10.2021.
//

import UIKit

class InformationPersonViewController: UIViewController {
    
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var mailLbel: UILabel!
    
    var personInformation: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = personInformation.fullName
        
        phoneNumberLabel.text = "Phone: \(personInformation.phoneNumber)"
        mailLbel.text = "Mail: \(personInformation.mail)"
    }
}

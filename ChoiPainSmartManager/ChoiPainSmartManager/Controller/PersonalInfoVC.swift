//
//  PersonalInfoVC.swift
//  ChoiPainSmartManager
//
//  Created by Micheal Finney on 1/29/18.
//  Copyright © 2018 Micheal Finney. All rights reserved.
//

import UIKit

class PersonalInfoVC: UIViewController {
    

    @IBOutlet weak var MaleSwitch: UISwitch!
    @IBOutlet weak var FemaleSwitch: UISwitch!
    @IBOutlet weak var PreviousBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var firstNameTextBox: UITextField!
    @IBOutlet weak var LastNameTextBox: UITextField!
    @IBOutlet weak var EmailAddressTextBox: UITextField!
    @IBOutlet weak var ethnicityTextBox: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        PreviousBtn.layer.cornerRadius = 8
        nextBtn.layer.cornerRadius = 8

    }
    
    @IBAction func MaleSwitchOn(_ sender: Any) {
        FemaleSwitch.isOn = false
    }
    
    @IBAction func FemaleSwitchOn(_ sender: Any) {
        MaleSwitch.isOn = false
    }

}

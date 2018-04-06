//
//  SubstanceAbuseVC.swift
//  ChoiPainSmartManager
//
//  Created by Micheal Finney on 2/12/18.
//  Copyright © 2018 Micheal Finney. All rights reserved.
//

import UIKit

class SubstanceAbuseVC: UIViewController {
    
    @IBOutlet weak var personalHistorySwitch: UISwitch!
    @IBOutlet weak var FamilyHistorySwitch: UISwitch!
    @IBOutlet weak var sexualAbuseSwitch: UISwitch!
    @IBOutlet weak var personalHistoryText: UITextField!
    @IBOutlet weak var familyHistoryText: UITextField!
    @IBOutlet weak var sexualAbuseText: UITextField!
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        backBtn.layer.cornerRadius = 8
        nextBtn.layer.cornerRadius = 8
    }
    
    @IBAction func personalSwitchOn(_ sender: UISwitch) {
        personalHistoryText.becomeFirstResponder()
    }
    @IBAction func familySwitchOn(_ sender: UISwitch) {
       familyHistoryText.becomeFirstResponder()
    }
    @IBAction func sexualAbuseSwitchOn(_ sender: UISwitch) {
        sexualAbuseText.becomeFirstResponder()
    }
    
    
}

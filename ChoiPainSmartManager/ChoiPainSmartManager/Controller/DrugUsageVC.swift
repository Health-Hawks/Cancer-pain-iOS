//
//  DrugUsageVC.swift
//  ChoiPainSmartManager
//
//  Created by Micheal Finney on 2/12/18.
//  Copyright © 2018 Micheal Finney. All rights reserved.
//

import UIKit

class DrugUsageVC: UIViewController {

    @IBOutlet weak var pastDrugUse: UISwitch!
    @IBOutlet weak var currentDrugUse: UISwitch!
    @IBOutlet weak var nicotineBtn: UIButton!
    @IBOutlet weak var alcoholBtn: UIButton!
    @IBOutlet weak var sleepingPillsBtn: UIButton!
    @IBOutlet weak var otherBtn: UIButton!
    @IBOutlet weak var nicotine2Btn: UIButton!
    @IBOutlet weak var alcohol2Btn: UIButton!
    @IBOutlet weak var sleepingPills2Btn: UIButton!
    @IBOutlet weak var other2Btn: UIButton!
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backBtn.layer.cornerRadius = 8
        nextBtn.layer.cornerRadius = 8
        nicotineBtn.layer.cornerRadius = 8
        alcoholBtn.layer.cornerRadius = 8
        sleepingPillsBtn.layer.cornerRadius = 8
        otherBtn.layer.cornerRadius = 8
        nicotine2Btn.layer.cornerRadius = 8
        alcohol2Btn.layer.cornerRadius = 8
        sleepingPills2Btn.layer.cornerRadius = 8
        other2Btn.layer.cornerRadius = 8
        
        }
    
    @IBAction func pastDrugUseOn(_ sender: UISwitch) {
    }

    @IBAction func currentDrugUseOn(_ sender: UISwitch) {
    }
    
    @IBAction func nicotinePressed(_ sender: UIButton) {
        ButtonPressed(sender: nicotineBtn)
    }
    
    @IBAction func alcoholPressed(_ sender: UIButton) {
        ButtonPressed(sender: alcoholBtn)
    }
    
    @IBAction func sleepingPillsPressed(_ sender: UIButton) {
        ButtonPressed(sender: sleepingPillsBtn)
    }
    
    @IBAction func otherPressed(_ sender: UIButton) {
        ButtonPressed(sender: otherBtn)
    }
    
    @IBAction func nicotine2Pressed(_ sender: UIButton) {
        ButtonPressed(sender: nicotine2Btn)
    }
    
    @IBAction func alcohol2Pressed(_ sender: UIButton) {
        ButtonPressed(sender: alcohol2Btn)
    }
    
    @IBAction func sleepingPills2Pressed(_ sender: UIButton) {
        ButtonPressed(sender: sleepingPills2Btn)
    }
    
    @IBAction func other2Pressed(_ sender: UIButton) {
        ButtonPressed(sender: other2Btn)
    }
    
}

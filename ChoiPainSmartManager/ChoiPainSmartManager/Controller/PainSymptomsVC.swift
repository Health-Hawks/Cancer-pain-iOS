//
//  PainSymptomsVC.swift
//  ChoiPainSmartManager
//
//  Created by Micheal Finney on 3/14/18.
//  Copyright © 2018 Micheal Finney. All rights reserved.
//

import UIKit

class PainSymptomsVC: UIViewController {

    @IBOutlet weak var fatigueBtn: UIButton!
    @IBOutlet weak var sleepingBtn: UIButton!
    @IBOutlet weak var depressionBtn: UIButton!
    @IBOutlet weak var otherBtn: UIButton!
    @IBOutlet weak var bathingBtn: UIButton!
    @IBOutlet weak var eatingBtn: UIButton!
    @IBOutlet weak var movingBtn: UIButton!
    @IBOutlet weak var other2Btn: UIButton!
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backBtn.layer.cornerRadius = 8
        nextBtn.layer.cornerRadius = 8
        fatigueBtn.layer.cornerRadius = 8
        sleepingBtn.layer.cornerRadius = 8
        depressionBtn.layer.cornerRadius = 8
        otherBtn.layer.cornerRadius = 8
        bathingBtn.layer.cornerRadius = 8
        eatingBtn.layer.cornerRadius = 8
        movingBtn.layer.cornerRadius = 8
        other2Btn.layer.cornerRadius = 8

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func fatiguePressed(_ sender: UIButton) {
        ButtonPressed(sender: fatigueBtn)
    }
    
    @IBAction func sleepingPressed(_ sender: UIButton) {
        ButtonPressed(sender: sleepingBtn)
    }
    
    @IBAction func depressionPressed(_ sender: UIButton) {
        ButtonPressed(sender: depressionBtn)
    }
    
    @IBAction func otherPressed(_ sender: UIButton) {
        ButtonPressed(sender: otherBtn)
    }
    
    @IBAction func bathingPressed(_ sender: UIButton) {
        ButtonPressed(sender: bathingBtn)
    }
    
    @IBAction func eatingPressed(_ sender: UIButton) {
        ButtonPressed(sender: eatingBtn)
    }
    
    @IBAction func movingPressed(_ sender: UIButton) {
        ButtonPressed(sender: movingBtn)
    }
    
    @IBAction func other2Pressed(_ sender: UIButton) {
        ButtonPressed(sender: other2Btn)
    }
    
}

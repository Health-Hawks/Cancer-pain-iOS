//
//  FurtherEducationVC.swift
//  ChoiPainSmartManager
//
//  Created by Micheal Finney on 3/26/18.
//  Copyright © 2018 Micheal Finney. All rights reserved.
//

import UIKit
import Firebase

class FurtherEducationVC: UIViewController {
    
    @IBOutlet weak var doneBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        doneBtn.layer.cornerRadius = 8

    }

    @IBAction func DoneBtnPressed(_ sender: UIButton) {

    }
}


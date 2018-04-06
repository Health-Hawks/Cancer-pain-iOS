//
//  ViewController.swift
//  ChoiPainSmartManager
//
//  Created by Micheal Finney on 1/29/18.
//  Copyright © 2018 Micheal Finney. All rights reserved.
//

import UIKit

class StartVC: UIViewController {

    @IBOutlet weak var startBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startBtn.layer.cornerRadius = 8
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


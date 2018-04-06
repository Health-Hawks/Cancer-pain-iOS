//
//  RegistrationViewDataVC.swift
//  ChoiPainSmartManager
//
//  Created by Micheal Finney on 1/29/18.
//  Copyright © 2018 Micheal Finney. All rights reserved.
//

import UIKit

class RegistrationViewDataVC: UIViewController {

    @IBOutlet weak var registrationBtn: UIButton!
    @IBOutlet weak var viewDataBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        registrationBtn.layer.cornerRadius = 8
        viewDataBtn.layer.cornerRadius = 8
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

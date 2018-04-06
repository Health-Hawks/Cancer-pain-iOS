//
//  PainTreatmentTypeVC.swift
//  ChoiPainSmartManager
//
//  Created by Micheal Finney on 3/26/18.
//  Copyright © 2018 Micheal Finney. All rights reserved.
//

import UIKit

class PainTreatmentTypeVC: UIViewController {

    @IBOutlet weak var prescriptionBtn: UIButton!
    @IBOutlet weak var alternativeBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        prescriptionBtn.layer.cornerRadius = 8
        alternativeBtn.layer.cornerRadius = 8
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

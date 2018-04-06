//
//  TreatmentInterventionVC.swift
//  ChoiPainSmartManager
//
//  Created by Micheal Finney on 2/19/18.
//  Copyright © 2018 Micheal Finney. All rights reserved.
//

import UIKit

class TreatmentInterventionVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet weak var treatmentInterventionPicker: UIPickerView!
    @IBOutlet weak var continueBtn: UIButton!
    
    let treatmentInterventionChoices = ["Surgery","Chemotherapy","Hormonal therapy","Biological response modifier",
                                        "Pharmacologic treatment","Use of ice or heat","Dry mouth - rinse",
                                        "Mucositis - magic mouthwash","Supplemental oxygen","Lotions/emollients for dry cracked and/or itchy skin",
                                        "Music therapy","Healing touch","Meditation","Massage","Acupuncture",
                                        "Reiki therapy","Other:indicate"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        continueBtn.layer.cornerRadius = 8

        treatmentInterventionPicker.dataSource = self
        treatmentInterventionPicker.delegate = self
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return treatmentInterventionChoices.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return treatmentInterventionChoices[row]
    }
    
}

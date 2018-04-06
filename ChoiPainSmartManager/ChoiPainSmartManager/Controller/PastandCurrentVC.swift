//
//  PastandCurrentVC.swift
//  ChoiPainSmartManager
//
//  Created by Micheal Finney on 2/7/18.
//  Copyright © 2018 Micheal Finney. All rights reserved.
//

import UIKit

class PastandCurrentVC: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var pastTreatPicker: UIPickerView!
    @IBOutlet weak var currentTreatPicker: UIPickerView!
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    let pastPainTreat = ["Surgery","Chemotherapy","Hormonal therapy","Biological response modifier",
                         "Pharmacologic treatment","Use of ice or heat","Dry mouth - rinse",
                         "Mucositis - magic mouthwash","Supplemental oxygen","Lotions/emollients for dry cracked and/or itchy skin",
                         "Music therapy","Healing touch","Meditation","Massage","Acupuncture",
                         "Reiki therapy","Other:indicate"]
    let currentPainTreat = ["Surgery","Chemotherapy","Hormonal therapy","Biological response modifier",
                            "Pharmacologic treatment","Use of ice or heat","Dry mouth - rinse",
                            "Mucositis - magic mouthwash","Supplemental oxygen","Lotions/emollients for dry cracked and/or itchy skin",
                            "Music therapy","Healing touch","Meditation","Massage","Acupuncture",
                            "Reiki therapy","Other:indicate"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backBtn.layer.cornerRadius = 8
        nextBtn.layer.cornerRadius = 8
        
        pastTreatPicker.delegate = self
        pastTreatPicker.dataSource = self
        currentTreatPicker.delegate = self
        currentTreatPicker.dataSource = self
        
    }
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        if pickerView == pastTreatPicker{
            return pastPainTreat.count}
        
        else{
            return currentPainTreat.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == pastTreatPicker{
            return pastPainTreat[row]}
            
        else{
            return currentPainTreat[row]
        }

    }
    
}

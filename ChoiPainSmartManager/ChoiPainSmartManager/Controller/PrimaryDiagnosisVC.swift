//
//  PrimaryDiagnosisVC.swift
//  ChoiPainSmartManager
//
//  Created by Micheal Finney on 2/5/18.
//  Copyright © 2018 Micheal Finney. All rights reserved.
//

import UIKit;



class PrimaryDiagnosisVC: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var cancerDiagnosisPicker: UIPickerView!
    
    let cancerdiagnosis = ["Bladder Cancer", "Brain Cancer", "Breast Cancer", "Cervical Cancer",
                           "Esophageal Cancer", "Kidney Cancer", "Leukemia", "Liver Cancer",
                           "Lung Cancer", "Melanoma", "Non-Hodgkin Lymphoma", "Ovarian Cancer",
                           "Pancreatic Cancer", "Skin Cancer", "Thyroid Cancer", "Uterine Cancer",
                           "Other Cancer"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backBtn.layer.cornerRadius = 8
        nextBtn.layer.cornerRadius = 8
        
        cancerDiagnosisPicker.dataSource = self
        cancerDiagnosisPicker.delegate = self
        
    }
   
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return cancerdiagnosis.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return cancerdiagnosis[row]
        
    }
}




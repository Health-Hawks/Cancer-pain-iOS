//
//  PainStrengthVC.swift
//  ChoiPainSmartManager
//
//  Created by Micheal Finney on 2/19/18.
//  Copyright © 2018 Micheal Finney. All rights reserved.
//

import UIKit

class PainStrengthVC: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    
    @IBOutlet weak var typeOfPainDropDown: UIPickerView!
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    let typeofpain = ["New pain", "Chronic Pain", "Breakthrough pain"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        backBtn.layer.cornerRadius = 8
        nextBtn.layer.cornerRadius = 8
        
        typeOfPainDropDown.delegate = self
        typeOfPainDropDown.dataSource = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return typeofpain.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return typeofpain[row]
    }
    
    
}

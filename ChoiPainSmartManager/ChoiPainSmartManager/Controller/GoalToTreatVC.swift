//
//  GoalToTreatVC.swift
//  ChoiPainSmartManager
//
//  Created by Micheal Finney on 2/7/18.
//  Copyright © 2018 Micheal Finney. All rights reserved.
//

import UIKit

class GoalToTreatVC: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var selectGoalLabel: UILabel!
    @IBOutlet weak var preferenceLbl: UILabel!
    @IBOutlet weak var goalPickerView: UIPickerView!
    @IBOutlet weak var prefPickerView: UIPickerView!
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    
    let goalToTreat = ["Gardening", "Driving", "Go back to work", "Typing", "Other:indicate"]
    let prefToTreat = ["Massage","Acupuncture","Guided-imagery exercise","Distraction","Back rubs","Vibration",
                       "Vibration","Use of ice or heat","Dry mouth - rinse","Mucositis - magic mouthwash","Supplemental oxygen",
                       "Lotions/emollients for dry cracked and/or itchy skin","Music therapy",
                       "Healing touch","Meditation","Reiki therapy","Other:indicate"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backBtn.layer.cornerRadius = 8
        nextBtn.layer.cornerRadius = 8
        
        goalPickerView.delegate = self
        goalPickerView.dataSource = self
        prefPickerView.delegate = self
        prefPickerView.dataSource = self
    }
    
    @available(iOS 2.0, *)
    public func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
    }

    @available(iOS 2.0, *)
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        if pickerView == goalPickerView{
            return goalToTreat.count}
        
        else{
            return prefToTreat.count
        }
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == goalPickerView{
            return goalToTreat[row]
        }
    
        else{
            return prefToTreat[row]
        }
    }
}


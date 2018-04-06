//
//  PainDescriptionVC.swift
//  ChoiPainSmartManager
//
//  Created by Micheal Finney on 2/19/18.
//  Copyright © 2018 Micheal Finney. All rights reserved.
//

import UIKit

class PainDescriptionVC: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var painStartedPicker: UIPickerView!
    @IBOutlet weak var feelsLikePicker: UIPickerView!
    @IBOutlet weak var feelsLikeBtn: UIButton!
    @IBOutlet weak var painStartedBtn: UIButton!
    @IBOutlet weak var painLastHours: UIPickerView!
    @IBOutlet weak var painLastMinutes: UIPickerView!
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    let hours = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15",
                 "16","17","18","19","20","21","22","23","24",">24"]
    let minutes = ["<15","30",">45"]
    let started = ["After starting cancer treatment", "After starting any kind of pain treatment",
                   "Other:indicate"]
    let feelsLike = ["Spasms", "Stinging", "Itching", "Dull", "Sharp", "Achy", "Shooting", "Other:indicate"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backBtn.layer.cornerRadius = 8
        nextBtn.layer.cornerRadius = 8
        
        painStartedPicker.delegate = self
        painStartedPicker.dataSource = self
        feelsLikePicker.dataSource = self
        feelsLikePicker.delegate = self
        painLastHours.delegate = self
        painLastHours.dataSource = self
        painLastMinutes.delegate = self
        painLastMinutes.dataSource = self
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == feelsLikePicker{
            return feelsLike.count
        }
        
        if pickerView == painStartedPicker{
            return started.count
        }
        
        if pickerView == painLastHours{
            return hours.count
        }
    
        else{
            return minutes.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == feelsLikePicker{
            return feelsLike[row]
        }
        
        if pickerView == painStartedPicker{
            return started[row]
        }
        
        if pickerView == painLastHours{
            return hours[row]
        }
        
        else{
            return minutes[row]
        }
        
    }
}

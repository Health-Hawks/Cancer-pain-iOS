//
//  OtherConditionsVC.swift
//  ChoiPainSmartManager
//
//  Created by Micheal Finney on 2/5/18.
//  Copyright © 2018 Micheal Finney. All rights reserved.
//

import UIKit

class OtherConditionsVC: UIViewController {

    @IBOutlet weak var EndocrineDiseaseBtn: UIButton!
    @IBOutlet weak var heartDiseaseBtn: UIButton!
    @IBOutlet weak var GastrointestinalBTN: UIButton!
    @IBOutlet weak var KidneyDiseaseBtn: UIButton!
    @IBOutlet weak var liverDiseaseBtn: UIButton!
    @IBOutlet weak var NeurologicDiseaseBtn: UIButton!
    @IBOutlet weak var RespiratoryDiseaseBtn: UIButton!
    @IBOutlet weak var OtherBtn: UIButton!
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        backBtn.layer.cornerRadius = 8
        nextBtn.layer.cornerRadius = 8
        EndocrineDiseaseBtn.layer.cornerRadius = 8
        heartDiseaseBtn.layer.cornerRadius = 8
        GastrointestinalBTN.layer.cornerRadius = 8
        KidneyDiseaseBtn.layer.cornerRadius = 8
        liverDiseaseBtn.layer.cornerRadius = 8
        NeurologicDiseaseBtn.layer.cornerRadius = 8
        RespiratoryDiseaseBtn.layer.cornerRadius = 8
        OtherBtn.layer.cornerRadius = 8
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    @IBAction func EndocrinePressed(_ sender: UIButton) {
        ButtonPressed(sender: EndocrineDiseaseBtn)
    }
    
    @IBAction func HeartDiseasePresses(_ sender: UIButton) {
        ButtonPressed(sender: heartDiseaseBtn)
    }
    
    @IBAction func gastrointestinalPressed(_ sender: UIButton) {
        ButtonPressed(sender: GastrointestinalBTN)
        
    }
    
    @IBAction func kidneyPressed(_ sender: UIButton) {
        ButtonPressed(sender: KidneyDiseaseBtn)
    }
    
    @IBAction func LiverPressed(_ sender: UIButton) {
        ButtonPressed(sender: liverDiseaseBtn)
    }
    
    @IBAction func neurologicPressed(_ sender: UIButton) {
        ButtonPressed(sender: NeurologicDiseaseBtn)
    }
    
    @IBAction func respiratoryPressed(_ sender: UIButton) {
        ButtonPressed(sender: RespiratoryDiseaseBtn)
    }
    
    @IBAction func OtherPressed(_ sender: UIButton) {
        ButtonPressed(sender: OtherBtn)
    }
    

}

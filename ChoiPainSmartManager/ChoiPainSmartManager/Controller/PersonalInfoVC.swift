//
//  PersonalInfoVC.swift
//  ChoiPainSmartManager
//
//  Created by Micheal Finney on 1/29/18.
//  Copyright © 2018 Micheal Finney. All rights reserved.
//

import UIKit
import Firebase

class PersonalInfoVC: UIViewController, UITextFieldDelegate {
    
    static var refUsers: DatabaseReference!
    
    @IBOutlet weak var MaleSwitch: UISwitch!
    @IBOutlet weak var FemaleSwitch: UISwitch!
    @IBOutlet weak var PreviousBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var firstNameTextBox: UITextField!
    @IBOutlet weak var LastNameTextBox: UITextField!
    @IBOutlet weak var EmailAddressTextBox: UITextField!
    @IBOutlet weak var ethnicityTextBox: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        PersonalInfoVC.refUsers = Database.database().reference().child("users")
        
        PreviousBtn.layer.cornerRadius = 8
        nextBtn.layer.cornerRadius = 8

    }
    
    public func addUser(){
        let key = PersonalInfoVC.refUsers.childByAutoId().key
        
        let User = ["id": key,
                    "FirstName": firstNameTextBox.text! as String,
                    "LastName": LastNameTextBox.text! as String,
                    "Email": EmailAddressTextBox.text! as String,
                    "Ethnicity": ethnicityTextBox.text! as String
                    ]
        
        PersonalInfoVC.refUsers.child(key).setValue(User)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
//    @objc func keyboardDidShow(notification: Notification){
//        let info:NSDictionary = notification.userInfo! as NSDictionary
//        let keyboardSize = (info[UIKeyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
//        let keyboardY = self.view.frame.size.height - keyboardSize.height
//
//        let editingTextFieldY: CGFloat! = self.firstNameTextBox?.frame.origin.y
//
//        if (self.view.frame.origin.y >= 0){
//            //check if the the text field is behind the keyboard
//            if (editingTextFieldY > (keyboardY - 60)) {
//                UIView.animate(withDuration: 0.25, delay: 0.0, options: UIViewAnimationOptions.curveEaseIn, animations:{
//                    self.view.frame = CGRect(x: 0, y: self.view.frame.origin.y - (editingTextFieldY - (keyboardY - 60)), width: self.view.bounds.width, height: self.view.bounds.height)
//                }, completion: nil)
//            }
//        }
//    }
//
//    @objc func keyboardWillHide(notification: Notification){
//        UIView.animate(withDuration: 0.25, delay: 0.0, options: UIViewAnimationOptions.curveEaseIn, animations:{
//            self.view.frame = CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height)
//        }, completion: nil)
//
//    }
//
//    func textFieldDidBeginEditing(_ textField: UITextField) {
//        firstNameTextBox = textField    }
//
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        textField.resignFirstResponder()
//        return true
//    }

    
    @IBAction func MaleSwitchOn(_ sender: Any) {
        FemaleSwitch.isOn = false
    }
    
    @IBAction func FemaleSwitchOn(_ sender: Any) {
        MaleSwitch.isOn = false
    }

}

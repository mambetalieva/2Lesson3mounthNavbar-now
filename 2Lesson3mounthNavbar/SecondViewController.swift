//
//  SecondViewController.swift
//  2Lesson3mounthNavbar
//
//  Created by Каира on 20.02.2023.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var sighUp: UIStackView!
    
    
    @IBOutlet weak var haveAccount: UIView!
    
    @IBOutlet weak var fullName: UITextField!
    
    @IBOutlet weak var mobileNumber: UITextField!
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var confirmPassword: UITextField!
    
    
    @IBOutlet weak var goToNext: UIButton!
    
    private func isTextFieldFiled(textField:  UITextField) -> Bool {
        guard let text = textField.text else { return false }
        
        if  text.isEmpty {
            textField.layer.borderWidth = 1
            textField.layer.borderColor = UIColor.red.cgColor
            textField.placeholder = "Need to fill"
            return false
        } else {
            return true
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if !isTextFieldFiled(textField: fullName) && !isTextFieldFiled(textField: mobileNumber) && !isTextFieldFiled(textField: email) && !isTextFieldFiled(textField: password) && !isTextFieldFiled(textField: confirmPassword){
            return false
        } else if !isTextFieldFiled(textField: fullName){
            return false
        } else if !isTextFieldFiled(textField: mobileNumber){
            return false
        } else if !isTextFieldFiled(textField: email){
            return false
        } else if !isTextFieldFiled(textField: password){
            return false
        } else if !isTextFieldFiled(textField: confirmPassword){
            return false
        } else {
            return true
        }
    }
    
    private func setupSubViews() {
        goToNext.layer.cornerRadius = 12
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubViews()
        // Do any additional setup after loading the view.
    }


}


   
    


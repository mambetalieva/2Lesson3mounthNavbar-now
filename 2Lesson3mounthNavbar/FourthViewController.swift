//
//  FourthViewController.swift
//  2Lesson3mounthNavbar
//
//  Created by Каира on 21.02.2023.
//

import UIKit


class FourthViewController: UIViewController {
    
    
    @IBOutlet weak var smsCode: UITextField!
    
    @IBOutlet weak var newPassword: UITextField!
    
    @IBOutlet weak var confirmNewPas: UITextField!
    
    @IBOutlet weak var goSubmit: UIButton!
    
    
    private func isTextFieldFiled(textField:  UITextField) -> Bool {
        guard let text = textField.text else { return false }
        
        if  text.isEmpty {
            textField.layer.borderWidth = 1
            textField.layer.borderColor = UIColor.red.cgColor
            textField.placeholder = "Fields  are Empty!!!!"
            return false
        } else {
            return true
        }
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if !isTextFieldFiled(textField: newPassword) && !isTextFieldFiled(textField: confirmNewPas) {
            return false
        }else if !isTextFieldFiled(textField: newPassword){
            return false
        } else if !isTextFieldFiled(textField: confirmNewPas){
            return false
        } else {
            return false
            
        }
    }
    
    private func setupSubViews(){
        smsCode.layer.cornerRadius = 4
        smsCode.isEnabled =  false
        smsCode.text = "Incorrect!!!!"
        smsCode.textColor = .magenta
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubViews()
    }
    
}

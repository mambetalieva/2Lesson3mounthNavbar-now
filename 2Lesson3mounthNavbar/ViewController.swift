//
//  ViewController.swift
//  2Lesson3mounthNavbar
//
//  Created by Каира on 20.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var forgetPassword: UIView!
    
    
    
    @IBOutlet weak var username: UITextField!
    
    
    @IBOutlet weak var password: UITextField!
    
    
    @IBOutlet weak var goToNextButton: UIButton!
    
    private func isTextFieldFiled(textField:  UITextField) -> Bool {
        guard let text = textField.text else { return false }
        
        if  text.isEmpty {
            textField.layer.borderWidth = 1
            textField.layer.borderColor = UIColor.red.cgColor
            textField.placeholder = "Поле должно быть заполнено обязательно"
            return false
        } else {
            return true
        }
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if !isTextFieldFiled(textField: username) && !isTextFieldFiled(textField: password){
            return false
        } else if !isTextFieldFiled(textField: username){
            return false
        } else if !isTextFieldFiled(textField: password){
            return false
        } else {
            return true
        }
    }
    
    private func setupSubViews() {
        goToNextButton.layer.cornerRadius = 12
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubViews()
        // Do any additional setup after loading the view.
    }


}


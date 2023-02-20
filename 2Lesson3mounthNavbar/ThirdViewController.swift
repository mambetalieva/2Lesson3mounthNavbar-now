//
//  ThirdViewController.swift
//  2Lesson3mounthNavbar
//
//  Created by Каира on 20.02.2023.
//

import UIKit

class ThirdViewController: UIViewController {
    
    
    @IBOutlet weak var forCode: UITextField!
    
    @IBOutlet weak var employeeiD: UITextField!
    
    @IBOutlet weak var enterMobOrEmail: UITextField!
    
    @IBOutlet weak var getOpt: UIButton!
    
    
    @IBOutlet weak var bOne: UIButton!
    
    @IBOutlet weak var submit: UIButton!
    
    private func isTextFieldFiled(textField:  UITextField) -> Bool {
        guard let text = textField.text else { return false }
        
        if  text.isEmpty {
            textField.layer.borderWidth = 1
            textField.layer.borderColor = UIColor.red.cgColor
            textField.placeholder = "You need to fill"
            return false
        } else {
            return false
        }
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if !isTextFieldFiled(textField: employeeiD) && !isTextFieldFiled(textField: enterMobOrEmail) {
            return false
        }else if !isTextFieldFiled(textField: employeeiD){
            return false
        } else if !isTextFieldFiled(textField: enterMobOrEmail){
            return false
        } else {
            return false
            
        }
    }
    
    private func setupSubViews(){
        forCode.layer.cornerRadius = 4
        
    }
    
    private func parole() {
        forCode.isEnabled =  false
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

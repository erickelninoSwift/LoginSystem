//
//  SignUpController.swift
//  ZandoLogin
//
//  Created by El nino Cholo on 2020/08/03.
//  Copyright © 2020 El nino Cholo. All rights reserved.
//

import UIKit

class SignUpController: UIViewController
{
    
    
    private let myimage:UIImageView =
    {
        let image = UIImageView(image: #imageLiteral(resourceName: "firebase-logo"))
        image.layer.cornerRadius = 15
        
        return image
    }()
    
    
    //MARK: properties textfields
    
    //MARK: Textfields
    private let fullnametextfield = CustomTetxfield(Placeholder: "Fullname")
    
    private let emailTextField = CustomTetxfield(Placeholder: "Email")
    
    
    private let passwordTextfield: CustomTetxfield =
    {
        let textfield = CustomTetxfield(Placeholder: "Password")
        textfield.isSecureTextEntry = true
        return textfield
    }()
    
    private let textfield:CustomTetxfield =
    {
        let textfield = CustomTetxfield(Placeholder: "Fullname")
        
        
        return textfield
        
    }()
    
    
    
    //MARK: IIBUttons
    
    private let backbutton: UIButton =
    {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tintColor = .white
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        button.addTarget(self, action: #selector(dimissal), for: .touchUpInside)
        
        return button
    }()
    
    
    private let signUPButton: CustomButton =
    {
        let button = CustomButton(type: .system)
        button.setTitle("Sign Up", for: .normal)
        button.titleLabel?.textColor = .white
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.titleEdgeInsets = UIEdgeInsets(top: 10, left: 8, bottom: 10, right: 8)
        
        button.addTarget(self, action: #selector(signUp), for: .touchUpInside)
        return button
    }()
    
    
    private let remeberpassword: UIButton =
    {
        let button =  UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        let attributedString = NSMutableAttributedString(string: "you remember password ?", attributes: [.foregroundColor: UIColor(white: 1, alpha: 0.67)])
        let attribute = NSMutableAttributedString(string: " Log In", attributes: [.foregroundColor: UIColor(white: 1, alpha: 0.67),.font: UIFont.boldSystemFont(ofSize: 18)])
        attributedString.append(attribute)
        
        button.setAttributedTitle(attributedString, for: .normal)
        button.addTarget(self, action: #selector(login), for: .touchUpInside)
        
        return button
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureui()
    }
    
    //MARK: functions
    
    @objc func dimissal()
    {
        navigationController?.popToRootViewController(animated: true)
    }
    
    @objc func signUp()
    {
        print("signUP button pressed")
        
    }
    
    @objc func login()
    {
        navigationController?.popToRootViewController(animated: true)
    }
    
    
    func configureui()
    {
        configure()
        let imagetouse = myimage
        
        view.addSubview(imagetouse)
        
        imagetouse.anchor(top: view.safeAreaLayoutGuide.topAnchor, paddingTop: 25)
        imagetouse.centerX(inView: view)
        imagetouse.setDimensions(height: 120, width: 120)
        
        
        
        let stackview = UIStackView(arrangedSubviews: [fullnametextfield,emailTextField,passwordTextfield,signUPButton])
        stackview.axis = .vertical
        stackview.spacing = 18
        
        
        view.addSubview(stackview)
        view.addSubview(remeberpassword)
        view.addSubview(backbutton)
        
        //        view.addSubview(sinUpbutton)
        stackview.anchor(top: imagetouse.bottomAnchor ,left: view.leftAnchor,right: view.rightAnchor, paddingTop: 25,paddingLeft: 32,paddingRight: 32)
        
        
        //        sinUpbutton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 10).isActive = true
        //        sinUpbutton.centerX(inView: view)
        //
        
        
        remeberpassword.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 10).isActive = true
        remeberpassword.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        remeberpassword.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        backbutton.anchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor,paddingTop: 16, paddingLeft: 16)
        
        
    }
    
}

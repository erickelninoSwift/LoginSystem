//
//  Homecontroller.swift
//  ZandoLogin
//
//  Created by El nino Cholo on 2020/08/03.
//  Copyright © 2020 El nino Cholo. All rights reserved.
//

import UIKit
import Firebase

class LoginController: UIViewController
{
    
    
    //MARK: properties textfields
    
    var validation:Bool?
    
    var loginmodel = loginViewModel()
    
    private let myimage:UIImageView =
    {
        let image = UIImageView(image: #imageLiteral(resourceName: "firebase-logo"))
        image.layer.cornerRadius = 15
        
        return image
    }()
    
    
    
    private let emailTextField = CustomTetxfield(Placeholder: "Email")
    private let passwordTextfield: CustomTetxfield = 
    {
        let textfield = CustomTetxfield(Placeholder: "Password")
        textfield.isSecureTextEntry = true
        return textfield
    }()
    
    
    
    //MARK: Divdider
    
    private let divider = Divider()
    
    //MARK: buttons
    
    private let loginButton:CustomButton =
    {
        let button = CustomButton(type: .system)
        button.setTitle("Log In", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        
        button.addTarget(self, action: #selector(login), for: .touchUpInside)
        return button
    }()
    
    private let restasswordbutton: UIButton =
    {
        let button  = UIButton(type: .system)
        
        let attributedstring = NSMutableAttributedString(string: "Forgot your password?", attributes: [.foregroundColor: UIColor(white: 1, alpha: 0.67), .font: UIFont.boldSystemFont(ofSize: 13)])
        
        let atrributed = NSMutableAttributedString(string: " Get help singing In.", attributes: [.foregroundColor: UIColor(white: 1, alpha: 0.87),.font: UIFont.boldSystemFont(ofSize: 18)])
        
        attributedstring.append(atrributed)
        
        button.setAttributedTitle(attributedstring, for: .normal)
        button.setTitleColor(UIColor(white: 1, alpha: 0.6), for: .normal)
        button.addTarget(self, action:#selector(restpassword) , for: .touchUpInside)
        
        return button
    }()
    
    
    private let googleloginButton: UIButton =
    {
        let button = UIButton()
        
        let attribut = NSMutableAttributedString(string: " SignIn with google", attributes: [.foregroundColor: UIColor(white: 1, alpha: 0.80), .font: UIFont.boldSystemFont(ofSize: 16)])
        
        button.setImage(#imageLiteral(resourceName: "btn_google_light_pressed_ios").withRenderingMode(.alwaysOriginal), for: .normal)
        button.setAttributedTitle( attribut, for: .normal)
        button.addTarget(self, action: #selector(googlesignIn), for: .touchUpOutside)
        
        return button
    }()
    
    
    private let sinUpbutton: UIButton =
    {
        let button  = UIButton(type: .system)
        
        let attributedstring = NSMutableAttributedString(string: "you dont have an account?", attributes: [.foregroundColor: UIColor(white: 1, alpha: 0.75), .font: UIFont.boldSystemFont(ofSize: 13)])
        
        let atrributed = NSMutableAttributedString(string: " SingUp.", attributes: [.foregroundColor: UIColor(white: 1, alpha: 0.87),.font: UIFont.boldSystemFont(ofSize: 18)])
        
        attributedstring.append(atrributed)
        
        button.setAttributedTitle(attributedstring, for: .normal)
        button.setTitleColor(UIColor(white: 1, alpha: 0.6), for: .normal)
        button.addTarget(self, action:#selector(SignUp) , for: .touchUpInside)
        
        return button
    }()
    
    
    
    
    //MARK: selectors
    
    @objc func emailfielddata()
    {
        if let email = emailTextField.text
        {
//            print(email)
            loginmodel.email = email
        
        }
       result()
    }
    
    @objc func passwordata()
    {
        if let password = passwordTextfield.text
        {
//            print(password)
            loginmodel.password = password
        }
        result()
        
    }
    
    func result()
    {
        validation = loginmodel.formisvalid
        if validation == true
        {
            loginButton.isEnabled = true
        }else
        {
            loginButton.isEnabled = false
        }
    }
    
    
    @objc func googlesignIn()
    {
        print("signIn with google")
    }
    
    @objc func login()
    {
        print("Login button")
    }
    
    @objc func restpassword()
    {
        let controller = Resetpassword()
        navigationController?.pushViewController(controller, animated: true)
    }
    
    @objc func SignUp()
    {
        let controller1 = SignUpController()
        navigationController?.pushViewController(controller1, animated: true)
    }
    
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        configureUI()
        validationobserverse()
        
    }
    
    //MARK: Configurations
    
    func configureUI()
    {
        configure()
        
        
        
        let imagetouse = myimage
        
        view.addSubview(imagetouse)
        
        
        imagetouse.anchor(top: view.safeAreaLayoutGuide.topAnchor, paddingTop: 25)
        imagetouse.centerX(inView: view)
        imagetouse.setDimensions(height: 120, width: 120)
        
        
        let stackview = UIStackView(arrangedSubviews: [emailTextField,passwordTextfield,loginButton])
        stackview.axis = .vertical
        stackview.spacing = 18
        
        let mystackview = UIStackView(arrangedSubviews: [restasswordbutton,divider,googleloginButton])
        mystackview.axis = .vertical
        mystackview.spacing = 18
        
        
        view.addSubview(stackview)
        view.addSubview(mystackview)
        view.addSubview(sinUpbutton)
        stackview.anchor(top: imagetouse.bottomAnchor ,left: view.leftAnchor,right: view.rightAnchor, paddingTop: 25,paddingLeft: 32,paddingRight: 32)
        
        mystackview.anchor(top: stackview.bottomAnchor ,left: view.leftAnchor,right: view.rightAnchor, paddingTop: 25,paddingLeft: 32,paddingRight: 32)
        
        
//        sinUpbutton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 10).isActive = true
        sinUpbutton.centerX(inView: view)
        sinUpbutton.anchor(bottom: view.safeAreaLayoutGuide.bottomAnchor, paddingBottom: 10)
        
        
        
        
    }
    
    func validationobserverse()
    {
        emailTextField.addTarget(self, action: #selector(emailfielddata), for: .editingChanged)
        passwordTextfield.addTarget(self, action: #selector(passwordata), for: .editingChanged)
    }
}

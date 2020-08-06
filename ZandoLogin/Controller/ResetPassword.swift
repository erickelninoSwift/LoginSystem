//
//  resetpasswordPage.swift
//  ZandoLogin
//
//  Created by El nino Cholo on 2020/08/04.
//  Copyright © 2020 El nino Cholo. All rights reserved.
//

import UIKit


class Resetpassword: UIViewController
{
    private let myimage:UIImageView =
    {
        let image = UIImageView(image: #imageLiteral(resourceName: "firebase-logo").withRenderingMode(UIImage.RenderingMode.alwaysOriginal))
        image.layer.cornerRadius = 15
        
        return image
    }()
    

    //MARK: properties textfields
    
    //MARK: Textfields
    
    private let emailTextField = CustomTetxfield(Placeholder: "Email")
    
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
    

    //MARK: IIBUttons
    
    private let Restpassword: CustomButton =
    {
        let button = CustomButton(type: .system)
        button.setTitle("Reset password", for: .normal)
        button.titleLabel?.textColor = .white
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.titleEdgeInsets = UIEdgeInsets(top: 10, left: 8, bottom: 10, right: 8)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.addTarget(self, action: #selector(restpassword1), for: .touchUpInside)
        return button
    }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        configureui()
        validationobserverse()
    }
    
    //MARK: functions
    
    @objc func dimissal()
    {
        navigationController?.popToRootViewController(animated: true)
    }
   
//    @objc func login()
//    {
//        navigationController?.popToRootViewController(animated: true)
//    }
//
    @objc func restpassword1()
    {
        print("Login button pressed")
    }
    
    @objc func emailfielddata()
    {
        print(emailTextField.text!)
    }

    
    func configureui()
    {
        configure()
        let imagetouse = myimage
        
        view.addSubview(imagetouse)
        
        imagetouse.anchor(top: view.safeAreaLayoutGuide.topAnchor, paddingTop: 25)
        imagetouse.centerX(inView: view)
        imagetouse.setDimensions(height: 120, width: 120)
        
        
        
        let stackview = UIStackView(arrangedSubviews: [emailTextField,Restpassword])
        stackview.axis = .vertical
        stackview.spacing = 18
        
        
        view.addSubview(stackview)
//        view.addSubview(remeberpassword)
        view.addSubview(backbutton)
        
        //        view.addSubview(sinUpbutton)
        stackview.anchor(top: imagetouse.bottomAnchor ,left: view.leftAnchor,right: view.rightAnchor, paddingTop: 25,paddingLeft: 32,paddingRight: 32)
        
 
        backbutton.anchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor,paddingTop: 16, paddingLeft: 16)
        
        
    }
    
    func validationobserverse()
    {
        emailTextField.addTarget(self, action: #selector(emailfielddata), for: .editingChanged)
    }
    
}

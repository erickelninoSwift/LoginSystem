//
//  homeviewcontroller.swift
//  IntrisictContent
//
//  Created by El nino Cholo on 2020/08/04.
//  Copyright © 2020 El nino Cholo. All rights reserved.
//

import UIKit

class Homeviewcontroller: UIViewController
{
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        view()
    }
    
    
    
    func configureUI()
    {
        navigationController?.navigationBar.isHidden = true
        navigationController?.navigationBar.barStyle = .black
//        let gradient = CAGradientLayer()
//        gradient.colors = [UIColor.systemPurple.cgColor,UIColor.systemRed.cgColor]
//        view.layer.addSublayer(gradient)
//        gradient.frame = view.frame
        
         view.backgroundColor = .systemPurple
    }
    
    private let namelabel:UILabel =
    {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.text = "username"
        label.setContentHuggingPriority(UILayoutPriority(rawValue: 200), for: NSLayoutConstraint.Axis.horizontal)
        label.textAlignment = .justified
        label.textColor = UIColor(white: 1, alpha: 0.87)
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.heightAnchor.constraint(equalToConstant: 20).isActive = true
        label.widthAnchor.constraint(equalToConstant: 80).isActive = true

        return label
    }()
    
    private let textfield: UITextField =
    {
        let textfield = UITextField()
        
        let spacer = UIView()
        spacer.heightAnchor.constraint(equalToConstant: 50).isActive = true
        spacer.widthAnchor.constraint(equalToConstant: 20).isActive = true
        textfield.leftView = spacer
        textfield.leftViewMode = .always
        
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.placeholder = "Enter your name"
       
        textfield.backgroundColor = UIColor(white: 1, alpha: 0.87)
        textfield.textColor = .black
        textfield.clearButtonMode = .always
        textfield.font = UIFont.systemFont(ofSize: 16)
        textfield.layer.cornerRadius = 5
        textfield.heightAnchor.constraint(equalToConstant: 30).isActive = true
        return textfield
    }()
    
    func view()
    {
        view.addSubview(namelabel)
        view.addSubview(textfield)
        
        namelabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 25).isActive = true
        namelabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
      
       

        
        
        textfield.firstBaselineAnchor.constraint(equalTo: namelabel.firstBaselineAnchor).isActive = true
        textfield.leadingAnchor.constraint(equalTo: namelabel.trailingAnchor, constant: 30).isActive = true
        textfield.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
     
        
    }
}

//
//  CustomTextFields.swift
//  ZandoLogin
//
//  Created by El nino Cholo on 2020/08/04.
//  Copyright © 2020 El nino Cholo. All rights reserved.
//

import UIKit

class CustomTetxfield: UITextField
{
    
    init(Placeholder : String)
    {
        super.init(frame: .zero)
        
        let spacer = UIView()
        spacer.setDimensions(height: 50, width: 15)
        leftView = spacer
        leftViewMode = .always
        
        clearButtonMode = .always
        borderStyle = .none
        textColor = UIColor.white
        layer.cornerRadius = 20
        backgroundColor = UIColor(white: 1, alpha: 0.2)
        keyboardAppearance = .dark
   
        setHeight(height: 80)
        
        
        attributedPlaceholder = NSAttributedString(string: Placeholder, attributes: [.foregroundColor: UIColor(white: 1.0, alpha: 0.8)])
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

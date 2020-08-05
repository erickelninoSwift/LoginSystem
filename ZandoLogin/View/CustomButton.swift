//
//  CustomButton.swift
//  ZandoLogin
//
//  Created by El nino Cholo on 2020/08/04.
//  Copyright © 2020 El nino Cholo. All rights reserved.
//

import UIKit

class CustomButton: UIButton
{
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.cornerRadius = 15
        backgroundColor = UIColor.black.withAlphaComponent(0.8)
        tintColor = UIColor.white
        
        titleLabel?.adjustsFontSizeToFitWidth = true
        titleLabel?.minimumScaleFactor = 0.5
        setHeight(height: 70)
        isEnabled = false
       
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

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
        
        layer.cornerRadius = 25
    
        backgroundColor = UIColor.systemOrange.withAlphaComponent(0.9)
        tintColor = UIColor(white: 1, alpha: 0.70)
        setHeight(height: 80)
        isEnabled = true
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

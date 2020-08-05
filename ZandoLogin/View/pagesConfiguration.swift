//
//  pagesConfiguration.swift
//  ZandoLogin
//
//  Created by El nino Cholo on 2020/08/04.
//  Copyright © 2020 El nino Cholo. All rights reserved.
//

import UIKit

extension UIViewController
{
   
    func configure()
    {
        
        
        
        navigationController?.navigationBar.isHidden = true
        navigationController?.navigationBar.barStyle = .black
        
        
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor.systemRed.cgColor,UIColor.systemRed.cgColor,UIColor.black.cgColor]
        gradient.locations = [0,2,1]

        view.layer.addSublayer(gradient)
        gradient.frame = view.frame
        
        
        
    }
    
}

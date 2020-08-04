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
        gradient.colors = [UIColor.systemBlue.cgColor,UIColor.systemBlue.cgColor,UIColor.systemPurple.cgColor]
        gradient.locations = [0,1,2]
        view.backgroundColor = .systemBlue
        view.layer.addSublayer(gradient)
        gradient.frame = view.frame
        
    }
    
}

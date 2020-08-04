//
//  Divider.swift
//  ZandoLogin
//
//  Created by El nino Cholo on 2020/08/04.
//  Copyright © 2020 El nino Cholo. All rights reserved.
//

import UIKit

class Divider: UIView
{
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let label = UILabel()
        label.text = "OR"
        label.textColor = UIColor(white: 1, alpha: 0.87)
        label.font = UIFont.boldSystemFont(ofSize: 18)
        
        addSubview(label)
        label.centerX(inView: self)
        label.centerY(inView: self)
        
        let divider = UIView()
        divider.backgroundColor = UIColor(white: 1, alpha: 0.87)
        addSubview(divider)
        divider.centerY(inView: self)
        divider.anchor(left: leftAnchor , right: label.leftAnchor,paddingLeft: 8, paddingRight: 8, height: 1.0)
        
        let divider2 = UIView()
        divider2.backgroundColor = UIColor(white: 1, alpha: 0.87)
        addSubview(divider2)
        divider2.centerY(inView: self)
        divider2.anchor(left: label.rightAnchor , right: rightAnchor ,paddingLeft: 8, paddingRight: 8, height: 1.0)
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

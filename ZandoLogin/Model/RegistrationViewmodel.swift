//
//  RegistrationViewmodel.swift
//  ZandoLogin
//
//  Created by El nino Cholo on 2020/08/06.
//  Copyright © 2020 El nino Cholo. All rights reserved.
//

import Foundation

struct RegistrationViewmodel {
    
    var email:String?
    var password:String?
    var fullname:String?
    
    var formisvalid:Bool
    {
        return fullname?.isEmpty == false && email?.isEmpty == false && password?.isEmpty == false
    }
    
}

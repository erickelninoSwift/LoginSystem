//
//  ResetViewmodel.swift
//  ZandoLogin
//
//  Created by El nino Cholo on 2020/08/06.
//  Copyright © 2020 El nino Cholo. All rights reserved.
//

import Foundation

struct ResetViewmodel {

    var email:String?
    
    var formisvalid:Bool
    {
        return email?.isEmpty == false
    }
}

//
//  Services.swift
//  ZandoLogin
//
//  Created by El nino Cholo on 2020/08/07.
//  Copyright © 2020 El nino Cholo. All rights reserved.
//

import UIKit
import Firebase

struct Services
{
    
    func Authtentification(email: String , passwordelnino:String, competion: AuthDataResultCallback?)
    {
        Auth.auth().signIn(withEmail: email, password: passwordelnino, completion: competion)
    }
    
    func registeruser(email: String , password:String, competion: AuthDataResultCallback?)
    {
        Auth.auth().createUser(withEmail: email, password: password, completion: competion)
    }

    func restpassword(email:String , completion :SendPasswordResetCallback?)
    {
        Auth.auth().sendPasswordReset(withEmail: email, completion: completion)
    }
    
    func logout()
    {
        do
        {
            try Auth.auth().signOut()
            
        }catch let error as NSError
        {
            print("DEBUG: error \(error.localizedDescription)")
        }
        
        
    }

}



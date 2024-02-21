//
//  SignInCDTO.swift
//  CitoyenActif
//
//  Created by Natacha Kom'ko on 2024-02-20.
//

import Foundation

struct SignInCDTO {
    
    var email : String
    var password : String
    
    static var empty : SignInCDTO{
        SignInCDTO(email: "", password: "")
    }
    
}

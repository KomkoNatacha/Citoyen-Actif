//
//  ResetCDTO.swift
//  CitoyenActif
//
//  Created by Natacha Kom'ko on 2024-02-20.
//

import Foundation

struct ResetCDTO {
    
    var email : String
    var password : String
    var confirmPassword : String
    
    static var empty : ResetCDTO{
        ResetCDTO(email: "", password: "", confirmPassword: "")
    }
    
}

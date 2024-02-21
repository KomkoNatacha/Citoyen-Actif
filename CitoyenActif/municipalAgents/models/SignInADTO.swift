//
//  SignInADTO.swift
//  CitoyenActif
//
//  Created by Natacha Kom'ko on 2024-02-20.
//

import Foundation

struct SignInADTO {
    
    var agentNumber : String
    var password : String
    
    static var empty : SignInADTO{
        SignInADTO(agentNumber: "", password: "")
    }
    
}

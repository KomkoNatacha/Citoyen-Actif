//
//  ResetADTO.swift
//  CitoyenActif
//
//  Created by Natacha Kom'ko on 2024-02-20.
//

import Foundation

//DTO pour reinitialiser le mot de passe de l'agent munipal
struct ResetADTO {
    
    var agentNumber : String
    var password : String
    var confirmPassword : String
    
    static var empty : ResetADTO{
        ResetADTO(agentNumber: "", password: "", confirmPassword: "")
    }
    
}

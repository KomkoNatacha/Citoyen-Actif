//
//  SignUpCDTO.swift
//  CitoyenActif
//
//  Created by Natacha Kom'ko on 2024-02-20.
//

import Foundation

//DTO pour la creation d'un compte pour un citoyen
struct SignUpCDTO {
    
    var firstname : String
    var lastname : String
    var email : String
    var phoneNumber : String
    var adresse : String
    var password : String
    
    static var empty : SignUpCDTO{
        SignUpCDTO(firstname: "", lastname: "", email: "", phoneNumber: "", adresse: "", password: "" )
    }
    
}

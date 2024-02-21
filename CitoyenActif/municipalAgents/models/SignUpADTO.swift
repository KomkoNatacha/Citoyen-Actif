//
//  SignUpADTO.swift
//  CitoyenActif
//
//  Created by Natacha Kom'ko on 2024-02-20.
//

import Foundation

struct SignUpADTO {
    
    var firstname : String
    var lastname : String
    var agentnumber : String
    var city : String
    var password : String
    
    static var empty : SignUpADTO{
        SignUpADTO(firstname: "", lastname: "", agentnumber: "", city: "", password: "" )
    }
    
}

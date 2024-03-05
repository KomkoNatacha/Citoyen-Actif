//
//  SignUpCViewModel.swift
//  CitoyenActif
//
//  Created by Natacha Kom'ko on 2024-02-20.
//

import Foundation

// ViewModel pour gérer l'inscription d'un citoyen
class SignUpCViewModel : ObservableObject {
    
    @Published var signUpCDTO = SignUpCDTO.empty
    @Published var onSucces = false
    @Published var onError = false
    @Published var succes = true


    
    
}

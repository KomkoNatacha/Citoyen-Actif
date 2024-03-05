//
//  SignUpAViewModel.swift
//  CitoyenActif
//
//  Created by Natacha Kom'ko on 2024-02-20.
//

import Foundation

// ViewModel pour gérer l'inscription d'un agent
class SignUpAViewModel : ObservableObject {
    
    @Published var signUpADTO = SignUpADTO.empty
    @Published var onSucces = false
    @Published var onError = false

}

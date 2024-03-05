//
//  ResetPasswordCViewModel.swift
//  CitoyenActif
//
//  Created by Natacha Kom'ko on 2024-02-20.
//

import Foundation

// ViewModel pour la reinitialisation du mot de passe du citoyen
class ResetCViewModel : ObservableObject {
    
    @Published var resetCDTO = ResetCDTO.empty
    @Published var onSucces = false
    @Published var onError = false

    
}

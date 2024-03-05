//
//  ResetAViewModel.swift
//  CitoyenActif
//
//  Created by Natacha Kom'ko on 2024-02-20.
//

import Foundation

// ViewModel pour la reinitialisation du mot de passe de l'agent
class ResetAViewModel : ObservableObject {
    
    @Published var resetADTO = ResetADTO.empty
    @Published var onSucces = false
    @Published var onError = false


}

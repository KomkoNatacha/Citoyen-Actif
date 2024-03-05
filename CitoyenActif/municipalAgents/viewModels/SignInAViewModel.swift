//
//  SignInAViewModel.swift
//  CitoyenActif
//
//  Created by Natacha Kom'ko on 2024-02-20.
//

import Foundation

// ViewModel pour la connexion d'un agent
class SignInAViewModel : ObservableObject {
    
    // Proprietes pour gérer l'état de la connexion
    @Published var signInADTO = SignInADTO.empty
    @Published var onSucces = false
    @Published var onError = false

    
    // Fonction asynchrone pour gerer la connexion
    @MainActor
    func tryToConnect() async {
        var request = URLRequest(url: URL(string : "https://www.uqtr.ca")!)
        request.httpMethod = "GET"
        do{
            let (_,_) = try await URLSession.shared.data(for: request)
            onSucces = true
            
            // Tentative d'envoi de la requête en mode asynchrone
        } catch {
            print(error)
            onError = true
        }
    }
}

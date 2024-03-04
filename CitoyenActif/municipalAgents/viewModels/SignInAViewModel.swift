//
//  SignInAViewModel.swift
//  CitoyenActif
//
//  Created by Natacha Kom'ko on 2024-02-20.
//

import Foundation

class SignInAViewModel : ObservableObject {
    
    @Published var signInADTO = SignInADTO.empty
    @Published var onSucces = false
    @Published var onError = false

    
    
    @MainActor
    func tryToConnect() async {
        var request = URLRequest(url: URL(string : "https://www.uqtr.ca")!)
        request.httpMethod = "GET"
        do{
            let (_,_) = try await URLSession.shared.data(for: request)
            onSucces = true
            
        } catch {
            print(error)
            onError = true
        }
    }
}

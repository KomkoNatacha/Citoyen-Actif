//
//  SignUpCViewModel.swift
//  CitoyenActif
//
//  Created by Natacha Kom'ko on 2024-02-20.
//

import Foundation

class SignUpCViewModel : ObservableObject {
    
    @Published var signUpCDTO = SignUpCDTO.empty
    @Published var onSucces = false
    @Published var onError = false

    
    
    @MainActor
    func tryToConnect() async {
        var request = URLRequest(url: URL(string : "https://www.uqtr.ca")!)
        request.httpMethod = "GET"
        do{
            let (data,response) = try await URLSession.shared.data(for: request)
            onSucces = true
            
        } catch {
            print(error)
            onError = true
        }
    }
}

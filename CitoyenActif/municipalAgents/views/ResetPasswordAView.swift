//
//  ResetPasswordAView.swift
//  CitoyenActif
//
//  Created by Natacha Kom'ko on 2024-02-16.
//

import SwiftUI

struct ResetPasswordAView: View {

    //View model pour la reinitialisation du mot de passe de l'agent
    @StateObject var vmA = ResetAViewModel()

    
    var body: some View {
        
        NavigationStack{
            
            VStack {
                
                Image("Image")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200,height: 200)
                    .padding()
                
                Text("Forgot Password")
                    .font(.largeTitle)
                    .bold()
                    .padding(.bottom, 5)
    
                Text("Municipal Agent")
                    .foregroundStyle(Color.black.opacity(0.6))
                    .padding(.bottom, 15)

                TextField("Agent number",text: $vmA.resetADTO.agentNumber)
                    .padding()
                    .frame(width: 320,height: 50)
                    .background(.linearGradient(colors : [.black.opacity(0.08),.black.opacity(0.08)], startPoint: .top, endPoint: .bottom), in : .buttonBorder)
                    .keyboardType(.emailAddress)
                
                TextField("Password",text: $vmA.resetADTO.password)
                    .padding()
                    .frame(width: 320,height: 50)
                    .background(.linearGradient(colors : [.black.opacity(0.08),.black.opacity(0.08)], startPoint: .top, endPoint: .bottom), in : .buttonBorder)
                
                TextField("Confirmation Password",text: $vmA.resetADTO.confirmPassword)
                    .padding()
                    .frame(width: 320,height: 50)
                    .background(.linearGradient(colors : [.black.opacity(0.08),.black.opacity(0.08)], startPoint: .top, endPoint: .bottom), in : .buttonBorder)                .padding(.bottom, 10)
                
                Button("Reset "){
                    
                }
                .foregroundStyle(.white)
                .frame(width: 320,height: 50)
                .background(.linearGradient(colors : [.blue,.blue], startPoint: .top, endPoint: .bottom), in : .buttonBorder)
                .padding(.bottom, 15)
                
                //lien de navigation vers la connexion de l'agent
                NavigationLink(destination: SignInAView()){
                    Text("You remember? Login here.")
                        .foregroundStyle(Color.orange.opacity(1))
                        .padding(.bottom, 10)
                        .bold()
                }
                
                
            }
            .padding()
        }
    }
    

    
}


#Preview {
    ResetPasswordAView()
}

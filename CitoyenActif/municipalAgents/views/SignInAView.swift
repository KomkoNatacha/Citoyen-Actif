//
//  SignInAView.swift
//  CitoyenActif
//
//  Created by Natacha Kom'ko on 2024-02-16.
//

import SwiftUI

struct SignInAView: View {
    
    //View model pour la connexion de l'agent 
    @StateObject var vmA = SignInAViewModel()

    var body: some View {
        VStack {
            NavigationStack{
                
                //Logo de l'application
                Image("Image")
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200,height: 200)
                    .padding()
                
                //Titre de la view
                Text("Sign In ")
                    .font(.largeTitle)
                    .bold()
                    .padding(.bottom, 5)
                
                Text("Municipal Agent")
                    .foregroundStyle(Color.black.opacity(0.6))
                    .padding(.bottom, 10)
                
                //Champs de texte pour le numero de l'agent
                TextField("Agent number",text: $vmA.signInADTO.agentNumber)
                    .padding()
                    .frame(width: 320,height: 50)
                    .background(.linearGradient(colors : [.black.opacity(0.08),.black.opacity(0.08)], startPoint: .top, endPoint: .bottom), in : .buttonBorder)
                
                //Champs securise pour le mot de passe
                SecureField("Password",text: $vmA.signInADTO.password)
                    .padding()
                    .frame(width: 320,height: 50)
                    .background(.linearGradient(colors : [.black.opacity(0.08),.black.opacity(0.08)], startPoint: .top, endPoint: .bottom), in : .buttonBorder)
                    .padding(.bottom,15)
                
                //Boutton de connexion
                Button(action: {
                    Task{
                        await vmA.tryToConnect()
                    }
                }){
                    Label("Sign In",systemImage: "")
                        .padding()
                        .foregroundStyle(.white)
                        .frame(width: 320,height: 50)
                        .background(.linearGradient(colors : [.blue,.blue], startPoint: .top, endPoint: .bottom), in : .buttonBorder)
                        .padding(.bottom,15)
                }
                .navigationDestination(isPresented: $vmA.onSucces){
                    HomeAgentView()
                }
                .alert(isPresented: $vmA.onError, content: {
                    Alert(title: Text("Connexion error"), message: Text("An error occurred while trying to connect"),dismissButton: Alert.Button.default(Text("Ok")))
                })
                
                
                //Lien de navigation vers la creation de compte
                NavigationLink(destination: SignUpAView()){
                    Text("New user? Create Account.")
                        .foregroundStyle(Color.orange.opacity(1))
                        .padding(.bottom, 20)
                }
                        
                //Lien de navigation vers la reinitialisation du mot de passe
                NavigationLink(destination: ResetPasswordAView()){
                    Text("Forgot Password?")
                        .foregroundStyle(Color.blue.opacity(0.6))
                }
                
            }
            .padding()
            
        }
    }
}

//Apercu de la view
#Preview {
    SignInAView()
}

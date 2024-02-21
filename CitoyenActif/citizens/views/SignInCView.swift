//
//  ContentView.swift
//  CitoyenActif
//
//  Created by Natacha Kom'ko on 2024-02-14.
//

import SwiftUI

struct SignInCView: View {
    
    @StateObject var vmC = SignInCViewModel()
    
    var body: some View {
        NavigationStack{
            
            VStack() {
                
                Image("Image")
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200,height: 200)
                    .padding()
                
                
                Text("Sign In")
                    .font(.largeTitle)
                    .bold()
                    .padding(.bottom, 5)
                
                
                Text("Citizen")
                    .foregroundStyle(Color.black.opacity(0.6))
                    .padding(.bottom, 10)
                
                TextField("Email",text: $vmC.signInCDTO.email)
                    .padding()
                    .frame(width: 320,height: 50)
                    .background(.linearGradient(colors : [.black.opacity(0.08),.black.opacity(0.08)], startPoint: .top, endPoint: .bottom), in : .buttonBorder)
                
                
                
                SecureField("Password",text: $vmC.signInCDTO.password)
                    .padding()
                    .frame(width: 320,height: 50)
                    .background(.linearGradient(colors : [.black.opacity(0.08),.black.opacity(0.08)], startPoint: .top, endPoint: .bottom), in : .buttonBorder)
                    .padding(.bottom,10)
                
                Button(action: {
                    Task{
                        await vmC.tryToConnect()
                    }
                }){
                    Label("Sign In",systemImage: "")
                        .foregroundStyle(.white)
                        .frame(width: 320,height: 50)
                        .background(.linearGradient(colors : [.blue,.blue], startPoint: .top, endPoint: .bottom), in : .buttonBorder)
                        .padding(.bottom,15)
                }
                .navigationDestination(isPresented: $vmC.onSucces){
                    HomeCitizenView()
                }
                .alert(isPresented: $vmC.onError, content: {
                    Alert(title: Text("Connexion error"), message: Text("An error occurred while trying to connect"),dismissButton: Alert.Button.default(Text("Ok")))
                })
               
                
                NavigationLink(destination: SignUpCView()){
                    Text("New user? Create Account.")
                        .foregroundStyle(Color.orange.opacity(1))
                        .padding(.bottom, 10)
                }
                
                NavigationLink(destination: ResetPasswordCView()){
                    Text("Forgot Password?")
                        .foregroundStyle(Color.blue.opacity(0.6))
                }
                
            }
            .padding()
        }
    }
}


#Preview {
    SignInCView()
}

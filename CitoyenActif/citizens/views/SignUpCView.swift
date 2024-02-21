//
//  SignUpView.swift
//  CitoyenActif
//
//  Created by Natacha Kom'ko on 2024-02-15.
//

import SwiftUI

struct SignUpCView: View {

    @StateObject var vmC = SignUpCViewModel()

    var body: some View {
        
        NavigationStack{
            
            VStack {
                
                Image("Image")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 130,height: 130)
                
                
                Text("Sign Up")
                    .font(.largeTitle)
                    .bold()
                    .padding(.bottom, 5)
                
                
                Text("Citizen")
                    .foregroundStyle(Color.black.opacity(0.6))
                    .padding(.bottom, 10)
                
                TextField("Firstname",text: $vmC.signUpCDTO.firstname)
                    .padding()
                    .frame(width: 320,height: 50)
                    .background(.linearGradient(colors : [.black.opacity(0.08),.black.opacity(0.08)], startPoint: .top, endPoint: .bottom), in : .buttonBorder)
                
                TextField("Lastname",text: $vmC.signUpCDTO.lastname)
                    .padding()
                    .frame(width: 320,height: 50)
                    .background(.linearGradient(colors : [.black.opacity(0.08),.black.opacity(0.08)], startPoint: .top, endPoint: .bottom), in : .buttonBorder)
                
                
                
                TextField("Email",text: $vmC.signUpCDTO.email)
                    .padding()
                    .frame(width: 320,height: 50)
                    .background(.linearGradient(colors : [.black.opacity(0.08),.black.opacity(0.08)], startPoint: .top, endPoint: .bottom), in : .buttonBorder)               
                    .keyboardType(.emailAddress)
                
                
                
                TextField("Phone number",text: $vmC.signUpCDTO.phoneNumber)
                    .padding()
                    .frame(width: 320,height: 50)
                    .background(.linearGradient(colors : [.black.opacity(0.08),.black.opacity(0.08)], startPoint: .top, endPoint: .bottom), in : .buttonBorder)
                    .keyboardType(.phonePad)
                
                
                
                TextField("Adresses",text: $vmC.signUpCDTO.adresse)
                    .padding()
                    .frame(width: 320,height: 50)
                    .background(.linearGradient(colors : [.black.opacity(0.08),.black.opacity(0.08)], startPoint: .top, endPoint: .bottom), in : .buttonBorder)
                
                TextField("Password",text: $vmC.signUpCDTO.password)
                    .padding()
                    .frame(width: 320,height: 50)
                    .background(.linearGradient(colors : [.black.opacity(0.08),.black.opacity(0.08)], startPoint: .top, endPoint: .bottom), in : .buttonBorder)
                    .padding(.bottom, 10)
                
                
                Button("Sign Up "){
                    
                }
                .foregroundStyle(.white)
                .frame(width: 320,height: 50)
                .background(.linearGradient(colors : [.orange,.orange], startPoint: .top, endPoint: .bottom), in : .buttonBorder)
                .padding(.bottom, 15)
                
                NavigationLink(destination: SignInCView()){
                    
                    Text("Already have an account? Sign In.")
                        .foregroundStyle(Color.blue.opacity(0.7))
                        .padding(.bottom, 10)
                        .bold()
                }
                        
                
                
                
            }
            .padding()
        }
    }
}

#Preview {
    SignUpCView()
}

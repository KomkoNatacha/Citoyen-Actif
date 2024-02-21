//
//  ResetPasswordView.swift
//  CitoyenActif
//
//  Created by Natacha Kom'ko on 2024-02-15.
//

import SwiftUI

struct ResetPasswordCView: View {
    
    @State private var email : String = ""
    @State private var password : String = ""
    @State private var confPassword : String = ""
    @State private var wrongEmail = 0
    
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
                
                
                Text("Citizen")
                    .foregroundStyle(Color.black.opacity(0.6))
                    .padding(.bottom, 15)
                
                
                TextField("Email",text: $email)
                    .padding()
                    .frame(width: 320,height: 50)
                    .background(.linearGradient(colors : [.black.opacity(0.08),.black.opacity(0.08)], startPoint: .top, endPoint: .bottom), in : .buttonBorder)                .border(.red,width: CGFloat(wrongEmail))
                    .keyboardType(.emailAddress)
                
                
                
                TextField("Password",text: $password)
                    .padding()
                    .frame(width: 320,height: 50)
                    .background(.linearGradient(colors : [.black.opacity(0.08),.black.opacity(0.08)], startPoint: .top, endPoint: .bottom), in : .buttonBorder)
                
                TextField("Confirmation Password",text: $confPassword)
                    .padding()
                    .frame(width: 320,height: 50)
                    .background(.linearGradient(colors : [.black.opacity(0.08),.black.opacity(0.08)], startPoint: .top, endPoint: .bottom), in : .buttonBorder)                .padding(.bottom, 10)
                
                
                
                Button("Reset "){
                    
                }
                .foregroundStyle(.white)
                .frame(width: 320,height: 50)
                .background(.linearGradient(colors : [.blue,.blue], startPoint: .top, endPoint: .bottom), in : .buttonBorder)
                .padding(.bottom, 15)
                
                NavigationLink(destination: SignInCView()){ 
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
    ResetPasswordCView()
}

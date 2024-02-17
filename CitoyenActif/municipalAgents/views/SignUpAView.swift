//
//  SignInAgentView.swift
//  CitoyenActif
//
//  Created by Natacha Kom'ko on 2024-02-15.
//

import SwiftUI

struct SignInAView: View {
    @State private var email : String = ""
    @State private var password : String = ""
    @State private var firsname : String  = ""
    @State private var lastname : String = ""
    @State private var agentNumber = ""
    @State private var city : String = ""
    @State private var wrongEmail = 0
    
    /**
     
        salut cava bien ?
     */
    
    var body: some View {
        
        VStack {
            Image("Image")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 140,height: 140)
            
            Text("Sign Up")
                .font(.largeTitle)
                .bold()
                .padding(.bottom, 5)
            
            
            Text("Create your account")
                .foregroundStyle(Color.black.opacity(0.6))
                .padding(.bottom, 10)
            
            TextField("Firstname",text: $firsname)
                .padding()
                .frame(width: 320,height: 50)
                .background(Color.black.opacity(0.05))
            
            TextField("Lastname",text: $lastname)
                .padding()
                .frame(width: 320,height: 50)
                .background(Color.black.opacity(0.05))
            
            TextField("Email",text: $email)
                .padding()
                .frame(width: 320,height: 50)
                .background(Color.black.opacity(0.05))
                .border(.red,width: CGFloat(wrongEmail))
                .keyboardType(.emailAddress)

            
            
            TextField("Agent number",text: $agentNumber)
                .padding()
                .frame(width: 320,height: 50)
                .background(Color.black.opacity(0.05))
            
            
            
            TextField("City",text: $city)
                .padding()
                .frame(width: 320,height: 50)
                .background(Color.black.opacity(0.05))
            
            TextField("Password",text: $password)
                .padding()
                .frame(width: 320,height: 50)
                .background(Color.black.opacity(0.05))
                .padding(.bottom, 10)
            
            
            Button("Sign Up "){
                
            }
            .foregroundStyle(.white)
            .frame(width: 320,height: 50)
            .background(Color.orange)
            .padding(.bottom, 10)
            
            Text("Citizens? Click here.")
                .foregroundStyle(Color.blue.opacity(1))
                .padding(.bottom, 10)
                .bold()
            
            Text("Already have an account? Sign In.")
                .foregroundStyle(Color.blue.opacity(0.6))
            
        }
        .padding()
    }
}
#Preview {
    SignInAView()
}

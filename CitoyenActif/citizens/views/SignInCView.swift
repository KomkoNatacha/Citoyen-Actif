//
//  ContentView.swift
//  CitoyenActif
//
//  Created by Natacha Kom'ko on 2024-02-14.
//

import SwiftUI

struct SignInCView: View {
    @State private var email : String = ""
    @State private var password : String = ""
    @State private var wrongPassword = 0
    @State private var wrongEmail = 0


    
    var body: some View {
        
            VStack {
                Image("Image")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200,height: 200)
                    .cornerRadius(10)
                    .padding()
                
                Text("Sign In")
                    .font(.largeTitle)
                    .bold()
                    .padding(.bottom, 5)

                
                Text("Sign in to your account")
                    .foregroundColor(Color.black.opacity(0.6))
                    .padding(.bottom, 10)
                
                TextField("Email",text: $email)
                    .padding()
                    .frame(width: 320,height: 50)
                    .background(Color.black.opacity(0.05))
                    .border(.red,width: CGFloat(wrongEmail))
                    .padding(.bottom, 10)
                    .cornerRadius(10)
                
                SecureField("Password",text: $password)
                    .padding()
                    .frame(width: 320,height: 50)
                    .background(Color.black.opacity(0.05))
                    .border(.red,width: CGFloat(wrongPassword))
                    .padding(.bottom, 10)
                    .cornerRadius(10)

                
                Button("Login"){
                    
                }
                .foregroundColor(.white)
                .frame(width: 320,height: 50)
                .background(Color.blue)
                .cornerRadius(10)
                .padding(.bottom, 10)

                Text("New user? Create Account.")
                    .foregroundColor(Color.orange.opacity(1))
                    .padding(.bottom, 20)
                
                Text("Forgot Password?")
                    .foregroundColor(Color.blue.opacity(0.6))

            }
            .padding()
        }
    }


#Preview {
    SignInCView()
}

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
        
        VStack {
            Image("Image")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200,height: 200)
                .cornerRadius(10)
                .padding()
            
            Text("Forgot Password")
                .font(.largeTitle)
                .bold()
                .padding(.bottom, 5)
            
            
            Text("Reset your pasword")
                .foregroundColor(Color.black.opacity(0.6))
                .padding(.bottom, 15)
            

            TextField("Email",text: $email)
                .padding()
                .frame(width: 320,height: 50)
                .background(Color.black.opacity(0.05))
                .border(.red,width: CGFloat(wrongEmail))
                .cornerRadius(10)
                .keyboardType(.emailAddress)


            
            TextField("Password",text: $password)
                .padding()
                .frame(width: 320,height: 50)
                .background(Color.black.opacity(0.05))
                .cornerRadius(10)
            
            
            TextField("Confirmation Password",text: $confPassword)
                .padding()
                .frame(width: 320,height: 50)
                .background(Color.black.opacity(0.05))
                .padding(.bottom, 10)
                .cornerRadius(10)
            
            
            Button("Reset "){
                
            }
            .foregroundColor(.white)
            .frame(width: 320,height: 50)
            .background(Color.blue)
            .cornerRadius(10)
            .padding(.bottom, 15)
            
            Text("You remember? Login here.")
                .foregroundColor(Color.orange.opacity(1))
                .padding(.bottom, 10)
                .bold()
            

            
        }
        .padding()
    }
}

#Preview {
    ResetPasswordCView()
}

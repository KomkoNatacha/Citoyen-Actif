//
//  SignUpView.swift
//  CitoyenActif
//
//  Created by Natacha Kom'ko on 2024-02-15.
//

import SwiftUI

struct SignUpCView: View {
    @State private var email : String = ""
    @State private var password : String = ""
    @State private var firsname : String  = ""
    @State private var lastname : String = ""
    @State private var phoneNumber = ""
    @State private var adresse : String = ""
    @State private var wrongEmail = 0
    
    var body: some View {
        
        VStack {
            Image("Image")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 130,height: 130)
                .cornerRadius(10)
               
            
            Text("Sign Up")
                .font(.largeTitle)
                .bold()
                .padding(.bottom, 5)

            
            Text("Create your account")
                .foregroundColor(Color.black.opacity(0.6))
                .padding(.bottom, 10)
            
            TextField("Firstname",text: $firsname)
                .padding()
                .frame(width: 320,height: 50)
                .background(Color.black.opacity(0.05))
                .cornerRadius(10)
            
            TextField("Lastname",text: $lastname)
                .padding()
                .frame(width: 320,height: 50)
                .background(Color.black.opacity(0.05))
                .cornerRadius(10)
            
        

            
            TextField("Email",text: $email)
                .padding()
                .frame(width: 320,height: 50)
                .background(Color.black.opacity(0.05))
                .border(.red,width: CGFloat(wrongEmail))
                .cornerRadius(10)
                .keyboardType(.emailAddress)

        
            
            TextField("Phone number",text: $phoneNumber)
                .padding()
                .frame(width: 320,height: 50)
                .background(Color.black.opacity(0.05))
                .cornerRadius(10)
                .keyboardType(.phonePad)
            
            
            
            TextField("Adresses",text: $adresse)
                .padding()
                .frame(width: 320,height: 50)
                .background(Color.black.opacity(0.05))
                .cornerRadius(10)
            
            TextField("Password",text: $password)
                .padding()
                .frame(width: 320,height: 50)
                .background(Color.black.opacity(0.05))
                .padding(.bottom, 10)
                .cornerRadius(10)

            
            Button("Sign Up "){
                
            }
            .foregroundColor(.white)
            .frame(width: 320,height: 50)
            .background(Color.orange)
            .cornerRadius(10)
            .padding(.bottom, 10)

            Text("Municipal agents? Click here.")
                .foregroundColor(Color.blue.opacity(1))
                .padding(.bottom, 10)
                .bold()
            
            Text("Already have an account? Sign In.")
                .foregroundColor(Color.blue.opacity(0.6))

        }
        .padding()
    }
}

#Preview {
    SignUpCView()
}

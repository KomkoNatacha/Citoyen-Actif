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
            HStack {
                Button(action: {}, label: {
                    Image(systemName: "arrow.left")
                        .font(.title2)
                        .foregroundStyle(.black)
                })
                .padding(.top,5)
                Spacer()
            }
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

        
            
            TextField("Phone number",text: $phoneNumber)
                .padding()
                .frame(width: 320,height: 50)
                .background(Color.black.opacity(0.05))
                .keyboardType(.phonePad)
            
            
            
            TextField("Adresses",text: $adresse)
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
            .padding(.bottom, 15)

            Text("Already have an account? Sign In.")
                .foregroundStyle(Color.blue.opacity(0.7))
                .padding(.bottom, 10)
                .bold()
            
            

        }
        .padding()
    }
}

#Preview {
    SignUpCView()
}

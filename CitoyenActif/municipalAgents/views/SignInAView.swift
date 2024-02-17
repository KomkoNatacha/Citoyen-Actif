//
//  SignInAView.swift
//  CitoyenActif
//
//  Created by Natacha Kom'ko on 2024-02-16.
//

import SwiftUI

struct SignInAView: View {
    @State private var agentNumber : String = ""
    @State private var password : String = ""
    @State private var wrongPassword = 0
    @State private var wrongNumber = 0

    var body: some View {
        
            VStack {
                HStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "arrow.left")
                            .font(.title2)
                            .foregroundStyle(.black)
                    })
                    .padding(.top,5)
                    Spacer()
                }
                
                Image("Image")
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200,height: 200)
                    .padding()
                
                    
                Text("Sign In ")
                    .font(.largeTitle)
                    .bold()
                    .padding(.bottom, 5)

                
                Text("Municipal Agent")
                    .foregroundStyle(Color.black.opacity(0.6))
                    .padding(.bottom, 10)
                
                TextField("Agent number",text: $agentNumber)
                    .padding()
                    .frame(width: 320,height: 50)
                    .background(Color.black.opacity(0.08))
                    .border(.red,width: CGFloat(wrongNumber))
                    .padding(.bottom, 10)
                   

                SecureField("Password",text: $password)
                    .padding()
                    .frame(width: 320,height: 50)
                    .background(Color.black.opacity(0.08))
                    .border(.red,width: CGFloat(wrongPassword))
                    .padding(.bottom, 10)

                
                Button("Sign In"){
                    
                }
                
                .foregroundStyle(.white)
                .frame(width: 320,height: 50)
                .background(Color.blue)
                .padding(.bottom, 10)

                
                Text("New user? Create Account.")
                    .foregroundStyle(Color.orange.opacity(1))
                    .padding(.bottom, 20)
                    
                
                Text("Forgot Password?")
                    .foregroundStyle(Color.blue.opacity(0.6))

            }
            .padding()

    }
}

#Preview {
    SignInAView()
}

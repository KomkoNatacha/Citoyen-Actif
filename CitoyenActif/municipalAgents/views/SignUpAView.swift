//
//  SignInAgentView.swift
//  CitoyenActif
//
//  Created by Natacha Kom'ko on 2024-02-15.
//

import SwiftUI

struct SignUpAView: View {
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
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 140,height: 140)
            
            Text("Sign Up")
                .font(.largeTitle)
                .bold()
                .padding(.bottom, 5)
            
            
            Text("Municipal Agent")
                .foregroundStyle(Color.black.opacity(0.6))
                .padding(.bottom, 10)
            
            TextField("Firstname",text: $firsname)
                .padding()
                .frame(width: 320,height: 50)
                .background(.linearGradient(colors : [.black.opacity(0.08),.black.opacity(0.08)], startPoint: .top, endPoint: .bottom), in : .buttonBorder)
            
            TextField("Lastname",text: $lastname)
                .padding()
                .frame(width: 320,height: 50)
                .background(.linearGradient(colors : [.black.opacity(0.08),.black.opacity(0.08)], startPoint: .top, endPoint: .bottom), in : .buttonBorder)
            
            TextField("Agent number",text: $agentNumber)
                .padding()
                .frame(width: 320,height: 50)
                .background(.linearGradient(colors : [.black.opacity(0.08),.black.opacity(0.08)], startPoint: .top, endPoint: .bottom), in : .buttonBorder)
            
            
            TextField("City",text: $city)
                .padding()
                .frame(width: 320,height: 50)
                .background(.linearGradient(colors : [.black.opacity(0.08),.black.opacity(0.08)], startPoint: .top, endPoint: .bottom), in : .buttonBorder)
            
            TextField("Password",text: $password)
                .padding()
                .frame(width: 320,height: 50)
                .background(.linearGradient(colors : [.black.opacity(0.08),.black.opacity(0.08)], startPoint: .top, endPoint: .bottom), in : .buttonBorder)
                .padding(.bottom, 10)
            
            
            Button("Sign Up "){
                
            }
            .foregroundStyle(.white)
            .frame(width: 320,height: 50)
            .background(.linearGradient(colors : [.orange,.orange], startPoint: .top, endPoint: .bottom), in : .buttonBorder)
            .padding(.bottom,15)
            
            Text("Already have an account? Sign In.")
                .foregroundStyle(Color.blue.opacity(0.7))
                .padding(.bottom, 10)
                .bold()
                
           
            
        }
        .padding()
    }
}
#Preview {
    SignUpAView()
}

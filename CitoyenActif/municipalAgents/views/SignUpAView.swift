//
//  SignInAgentView.swift
//  CitoyenActif
//
//  Created by Natacha Kom'ko on 2024-02-15.
//

import SwiftUI

struct SignUpAView: View {
    
    @StateObject var vmA = SignUpAViewModel()

    
    
    var body: some View {
        
        NavigationStack{
            
            VStack {
                
                
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
                
                TextField("Firstname",text: $vmA.signUpADTO.firstname)
                    .padding()
                    .frame(width: 320,height: 50)
                    .background(.linearGradient(colors : [.black.opacity(0.08),.black.opacity(0.08)], startPoint: .top, endPoint: .bottom), in : .buttonBorder)
                
                TextField("Lastname",text: $vmA.signUpADTO.lastname)
                    .padding()
                    .frame(width: 320,height: 50)
                    .background(.linearGradient(colors : [.black.opacity(0.08),.black.opacity(0.08)], startPoint: .top, endPoint: .bottom), in : .buttonBorder)
                
                TextField("Agent number",text: $vmA.signUpADTO.agentnumber)
                    .padding()
                    .frame(width: 320,height: 50)
                    .background(.linearGradient(colors : [.black.opacity(0.08),.black.opacity(0.08)], startPoint: .top, endPoint: .bottom), in : .buttonBorder)
                
                
                TextField("City",text: $vmA.signUpADTO.city)
                    .padding()
                    .frame(width: 320,height: 50)
                    .background(.linearGradient(colors : [.black.opacity(0.08),.black.opacity(0.08)], startPoint: .top, endPoint: .bottom), in : .buttonBorder)
                
                TextField("Password",text: $vmA.signUpADTO.password)
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
                
                NavigationLink(destination: SignInAView()){
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
    SignUpAView()
}

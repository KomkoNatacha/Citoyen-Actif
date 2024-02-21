//
//  ResetPasswordView.swift
//  CitoyenActif
//
//  Created by Natacha Kom'ko on 2024-02-15.
//

import SwiftUI

struct ResetPasswordCView: View {
    
    @StateObject var vmC = ResetCViewModel()

    
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
                
                
                TextField("Email",text: $vmC.resetCDTO.email)
                    .padding()
                    .frame(width: 320,height: 50)
                    .background(.linearGradient(colors : [.black.opacity(0.08),.black.opacity(0.08)], startPoint: .top, endPoint: .bottom), in : .buttonBorder)
                    .keyboardType(.emailAddress)
                
                
                
                TextField("Password",text: $vmC.resetCDTO.password)
                    .padding()
                    .frame(width: 320,height: 50)
                    .background(.linearGradient(colors : [.black.opacity(0.08),.black.opacity(0.08)], startPoint: .top, endPoint: .bottom), in : .buttonBorder)
                
                TextField("Confirmation Password",text: $vmC.resetCDTO.confirmPassword)
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

//
//  MainPageView.swift
//  CitoyenActif
//
//  Created by Natacha Kom'ko on 2024-02-16.
//

import SwiftUI

struct  MainPageView: View {
    
    
    
    var body: some View {
        
        NavigationStack{
            
            VStack {
                
                Image("mainIcon")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200,height: 200)
                    .padding()
                
                Text("Citoyen Actif")
                    .font(.largeTitle)
                    .bold()
                    .padding(.bottom, 5)
                
                Text("Report problems, improve your community")
                    .foregroundStyle(Color.black.opacity(0.6))
                    .padding(.bottom, 50)
                
                
                Text("Continue as")
                    .font(.title3)
                    .padding(.bottom, 10)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack(alignment: .leading, spacing: 10) {
                    
                
                        NavigationLink(destination: SignInCView()){
                            HStack {
                                
                                Image("LogoWoman")
                                    .resizable()
                                    .frame(width: 100,height: 100)
                                    .padding(.bottom, 20)
                                
                                VStack(alignment: .leading, spacing: 5){
                                    
                                    Text("Citizen")
                                        .font(.headline)
                                        .bold()
                                        .foregroundStyle(Color.blue)
                                    
                                    Text("Contribute to your community by reporting issues encountered.")
                                        .font(.subheadline)
                                        .foregroundStyle(Color.black.opacity(0.6))
                                        .multilineTextAlignment(.leading)
                                    
                                }
                                .padding(.leading,10)
                                
                            }
                            
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                    .shadow(radius: 3))
                        }
                    
                    
                    NavigationLink(destination: SignInAView()){
                        HStack {
                            Image("LogoMan")
                                .resizable()
                                .frame(width: 100,height: 100)
                                .padding(.bottom, 20)
                            
                            VStack(alignment: .leading, spacing: 5){
                                Text("Municipal Agent")
                                    .font(.headline)
                                    .bold()
                                    .foregroundStyle(Color.blue)
                                
                                Text("Take action to resolve reported    issues and improve local life.")
                                    .font(.subheadline)
                                    .foregroundStyle(Color.black.opacity(0.6))
                                    .multilineTextAlignment(.leading)
                            }
                            .padding(.leading,10)
                        }
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.white)
                                .shadow(radius: 3))
                        
                        
                        
                    }
                }
            }
            .padding()
            
        }
    }
}


#Preview {
    MainPageView()
}

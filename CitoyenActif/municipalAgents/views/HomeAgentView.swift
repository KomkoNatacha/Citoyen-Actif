//
//  HomeAgentView.swift
//  CitoyenActif
//
//  Created by Natacha Kom'ko on 2024-02-20.
//

import SwiftUI

struct HomeAgentView: View {
    var body: some View {
        
        //Menu
        TabView{
            ListDeBrisView()
                .tabItem{
                    Label("Liste bris", systemImage: "list.bullet.clipboard.fill")
                }
            
            ListeDeBrisReparerView()
                .tabItem {
                    Label("Bris reparer", systemImage: "list.bullet.rectangle.portrait.fill")
                }
            
            CarteDeBrisView()
                .tabItem{
                    Label("Carte bris", systemImage: "map.fill")
                }
            
            ProfilAgentView()
                .tabItem{
                    Label("Profil", systemImage: "person.crop.circle.fill")
                }
            
        }
    }
}

//View pour afficher la liste des bris reparer par l'agent
struct ListeDeBrisReparerView: View {
    
    @StateObject var reportObject = ReportViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                SearchBar(searchText: $reportObject.searchText, isSearching: $reportObject.isSearching)
                
                List{
                    
                    
                    
                }.navigationTitle("Liste des bris reparé")
            }.sheet(isPresented: $reportObject.isSheetPresented, content: {
                
                AddReportView(isSheetPresented: $reportObject.isSheetPresented)
            })
        }
    }
}

//View pour afficher le profil de l'agent
struct ProfilAgentView: View {
    @StateObject var vmA = SignUpAViewModel()
    var body: some View {
        VStack(spacing: 20) {
            Text("Informations profil de l'agent")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.bottom, 20)
            
            ProfileItem(label: "Prénom", value: vmA.signUpADTO.lastname)
            ProfileItem(label: "Nom", value: vmA.signUpADTO.firstname)
            ProfileItem(label: "Numero d'agent", value: vmA.signUpADTO.agentnumber)
            ProfileItem(label: "Adresse", value: vmA.signUpADTO.city)
            ProfileItem(label: "Mot de passe", value: vmA.signUpADTO.password)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()    }
}

#Preview {
    HomeAgentView()
}

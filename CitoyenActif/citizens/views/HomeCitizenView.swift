//
//  HomeCitizenView.swift
//  CitoyenActif
//
//  Created by Natacha Kom'ko on 2024-02-20.
//

import SwiftUI

struct HomeCitizenView: View {
    
    @StateObject var reportObject = ReportViewModel()
    
    var body: some View {
        TabView{
            ListDeBrisView(reportObject: reportObject)
                .tabItem{
                    Label("Liste bris", systemImage: "tray.and.arrow.down.fill")
                }
            CarteDeBrisView()
                .tabItem{
                    Label("Carte bris", systemImage: "map.fill")
                }
            
            ProfilCitizenView()
                .previewLayout(.sizeThatFits)
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 5)
                .tabItem{
                    Label("Profil", systemImage: "person.crop.circle.fill")
                }
        }
    }
}


struct ListDeBrisView: View {
    @StateObject var reportObject = ReportViewModel()
    var body: some View {
        NavigationStack {
            VStack {
                SearchBar(searchText: $reportObject.searchText, isSearching: $reportObject.isSearching)
                
                List{
                    ForEach(reportObject.filteredItems) { index in
                        
                        NavigationLink(destination: EmptyView()){
                            
                            CardView(report: index)
                        }
                        
                    }
                    .navigationTitle(reportObject.filteredItems.count == 1 ? "Liste filtrée" : "Liste des bris")
                    
                }
            }.sheet(isPresented: $reportObject.isSheetPresented, content: {
                
                AddReportView(isSheetPresented: $reportObject.isSheetPresented)
            })
        }.overlay(
            Button(action: {
                reportObject.isSheetPresented.toggle()
            }) {
                Image(systemName: "plus")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .clipShape(Circle())
                    .padding(16)
                    .shadow(radius: 5)
            }
                .padding(.bottom, 16)
                .padding(.trailing, 16)
            , alignment: .bottomTrailing
        )
    }
    
    
}


struct SearchBar: View {
    @Binding var searchText: String
    @Binding var isSearching: Bool
    
    var body: some View {
        HStack {
            TextField("Rechercher", text: $searchText)
                .padding(.leading, 24)
                .onChange(of: searchText) {
                    isSearching = true
                }
            
            Button(action: {
                searchText = ""
                isSearching = false
            }) {
                Image(systemName: "xmark.circle.fill")
                    .padding(.trailing)
                    .opacity(searchText == "" ? 0 : 1)
            }
        }
        .padding()
        .background(Color(.systemGray5))
        .cornerRadius(8)
        .padding(.horizontal)
        .padding(.top)
    }
}





struct CardView : View {
    
    @StateObject var report: ReportModel
    
    var body: some View {
        VStack{
            Text(report.title)
                .font(.title)
                .padding()
            
            Image(report.image)
                .resizable()
                .frame(width: 200, height: 200)
                .padding()
            
            
            Text(report.description)
                .font(.title3)
                .padding()
        }.background(.linearGradient(colors : [.black.opacity(0.08),.black.opacity(0.08)], startPoint: .top, endPoint: .bottom))
    }
}




struct CarteDeBrisView: View {
    @StateObject var reportObject = ReportViewModel()
    var body: some View {
        NavigationStack {
            VStack {
                SearchBar(searchText: $reportObject.searchText, isSearching: $reportObject.isSearching)
                
                List{
                    
                    
                    
                }.navigationTitle("Carte des bris")
            }.sheet(isPresented: $reportObject.isSheetPresented, content: {
                
                AddReportView(isSheetPresented: $reportObject.isSheetPresented)
            })
        }.overlay(
            Button(action: {
                reportObject.isSheetPresented.toggle()
            }) {
                Image(systemName: "plus")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .clipShape(Circle())
                    .padding(16)
                    .shadow(radius: 5)
            }
                .padding(.bottom, 16)
                .padding(.trailing, 16)
            , alignment: .bottomTrailing
        )
    }
    
}


struct ProfilCitizenView: View {
    
    @StateObject var reportObject = SignUpCViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Informations profil du citoyen")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.bottom, 20)
            
            ProfileItem(label: "Prénom", value: reportObject.signUpCDTO.lastname)
            ProfileItem(label: "Nom", value: reportObject.signUpCDTO.firstname)
            ProfileItem(label: "Email", value: reportObject.signUpCDTO.email)
            ProfileItem(label: "Téléphone", value: reportObject.signUpCDTO.phoneNumber)
            ProfileItem(label: "Adresse", value: reportObject.signUpCDTO.adresse)
            ProfileItem(label: "Mot de passe", value: reportObject.signUpCDTO.password)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
    }
}

struct ProfileItem: View {
    var label: String
    var value: String
    
    var body: some View {
        HStack {
            Text(label)
                .fontWeight(.medium)
                .foregroundColor(.gray)
            Spacer()
            Text(value)
        }
    }
}




struct AddReportView: View {
    @Binding var isSheetPresented: Bool
    @StateObject var vm = ReportViewModel()
    
    
    var body: some View {
        NavigationView {
            VStack{
                
                Form {
                    Section(header: Text("Nouveau bri")) {
                        TextField("Titre", text: $vm.newTitle)
                            .padding()
                        TextField("Image", text: $vm.newImage)
                            .padding()
                        TextField("Description", text: $vm.newDescription)
                            .padding()
                    }
                }
                
                
                Button("Enregistrer") {
                    //_ = ReportModel(title: newTitle, image: newImage, description: newDescription)
                    //reportObject.addReport(newReport)
                    isSheetPresented = false
                }
                
            }
            .navigationTitle("Ajouter un rapport")
        }
    }
}



#Preview {
    HomeCitizenView()
    
}

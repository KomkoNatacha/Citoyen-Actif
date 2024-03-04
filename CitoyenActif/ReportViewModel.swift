//
//  ReportViewModel.swift
//  CitoyenActif
//
//  Created by William Junior Demanou Fouelefack on 2024-03-02.
//

import Foundation

class ReportViewModel : ObservableObject{
    
    @Published var listReports = StoreReport()
    @Published var searchText = ""
    @Published var isSearching = false
    @Published var isSheetPresented = false

    
    var filteredItems: [ReportModel] {
        if searchText.isEmpty {
            
            return listReports.listReport
        } else {
            return listReports.listReport.filter { $0.title.lowercased().contains(searchText.lowercased()) }
        }
    }
    
}

//
//  ReportModel.swift
//  CitoyenActif
//
//  Created by William Junior Demanou Fouelefack on 2024-03-02.
//

import Foundation

class ReportModel : Identifiable, ObservableObject  {
    
    let id = UUID()
    @Published var title : String
    @Published var image : String
    @Published var description : String
    
    init(title: String, image: String, description: String) {
        self.title = title
        self.image = image
        self.description = description
    }

}

//
//  StoreReport.swift
//  CitoyenActif
//
//  Created by William Junior Demanou Fouelefack on 2024-03-02.
//

import Foundation


class StoreReport {
    
    @Published var listReport = [ReportModel]()
    
    init() {
        self.listReport.append(ReportModel(title: "Bris 1", image: "image1", description: "Lorem ipsum dolor, sit amet consectetur adipisicing elit."))
        self.listReport.append(ReportModel(title: "Bris 2", image: "image2", description: "Lorem ipsum dolor, sit amet consectetur adipisicing elit."))
        self.listReport.append(ReportModel(title: "Bris 3", image: "image3", description: "Lorem ipsum dolor, sit amet consectetur adipisicing elit."))
        self.listReport.append(ReportModel(title: "Bris 4", image: "image4", description: "Lorem ipsum dolor, sit amet consectetur adipisicing elit."))
        self.listReport.append(ReportModel(title: "Bris 5", image: "image5", description: "Lorem ipsum dolor, sit amet consectetur adipisicing elit."))
        self.listReport.append(ReportModel(title: "Bris 6", image: "image2", description: "Lorem ipsum dolor, sit amet consectetur adipisicing elit."))
        self.listReport.append(ReportModel(title: "Bris 7", image: "image3", description: "Lorem ipsum dolor, sit amet consectetur adipisicing elit."))
        self.listReport.append(ReportModel(title: "Bris 8", image: "image4", description: "Lorem ipsum dolor, sit amet consectetur adipisicing elit."))
        self.listReport.append(ReportModel(title: "Bris 9", image: "image1", description: "Lorem ipsum dolor, sit amet consectetur adipisicing elit."))
        
    }
    
}

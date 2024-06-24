//
//  appData.swift
//  Course It
//
//  Created by Thomas Pigg on 23/06/2024.
//

import Foundation


class appData: ObservableObject {
    
    @Published var workingData = [Subject]()
    
    init() {
        decodeJson()
        
    }
    
    func decodeJson() {
        
        guard let url = Bundle.main.url(forResource: "Courses", withExtension: "json")
        else {
            print("file not found")
            return
        }
        
        let data = try? Data(contentsOf: url)
        let subjectsDecoded = try? JSONDecoder().decode([Subject].self, from: data!)
        
        self.workingData = subjectsDecoded!
        
    }
    
}

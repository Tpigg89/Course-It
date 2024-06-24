//
//  Subjects.swift
//  Course It
//
//  Created by Thomas Pigg on 23/06/2024.
//

import Foundation

class Subjects: ObservableObject {
    
    var subjects: SubjectsData
    
    var primary: Subject {
        subjects.subjects[0]
    }
    
    init() {
        guard let url = Bundle.main.url(forResource: "Courses", withExtension: "json") else {
            fatalError("Failed to locate Courses in bundle.")
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load Courses from bundle.")
        }
        
        let decoder = JSONDecoder()
        guard let loaded = try? decoder.decode(SubjectsData.self, from: data) else {
            fatalError("Failed to decode Courses from bundle.")
        }

        subjects = loaded
    }
    
}

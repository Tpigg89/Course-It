//
//  Course_ItApp.swift
//  Course It
//
//  Created by Thomas Pigg on 23/06/2024.
//

import SwiftUI

@main
struct Course_ItApp: App {
    
    @StateObject var subjectData = Subjects()
    
    var body: some Scene {
    
        WindowGroup {
            MainView(subjectsData: subjectData.subjects)
        }
    }
}

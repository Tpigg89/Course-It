//
//  TakenCoursesView.swift
//  Course It
//
//  Created by Thomas Pigg on 24/06/2024.
//

import SwiftUI

struct TakenCoursesView: View {
    
    var takenCourse: [Course]?
    @State var showingDino = false
    
    var body: some View {
        
        if takenCourse == nil {
            Text("You're not doing any courses")
                .onTapGesture {
                    showingDino.toggle()
                }
            if showingDino {
             Text("Yay you found Dino!!")
                    .font(.subheadline)
                    .foregroundStyle(Color.green)
                Image("Dino_Icon")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 60)
                    
            }
        } else {
            List(takenCourse!, id: \.courseTitle) { course in
                Text(course.courseTitle)
            }
        }
    }
}

#Preview {
    TakenCoursesView()
}

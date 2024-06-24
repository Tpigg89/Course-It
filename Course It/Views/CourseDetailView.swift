//
//  CourseDetailView.swift
//  Course It
//
//  Created by Thomas Pigg on 23/06/2024.
//

import SwiftUI

struct CourseDetailView: View {
    
    var course: Course?
    
    var body: some View {
        VStack {
            Text(course?.courseTitle ?? "")
                .font(.title)
                .bold()
                .padding()
           
            
            Text(course?.description ?? "")
                .padding()
            Text("Your Instructors")
                .font(.headline)
                .padding()
            ForEach(course!.instructors, id: \.name) { teacher in
                HStack {
                    Text(teacher.name)
                    Text(teacher.email)
                }
                
            }
            CourseProgressView()
                .padding(.vertical)
            
            AddCourseButton()
                .padding(.vertical)
        }
    }
}

//#Preview {
//    CourseDetailView()
//}

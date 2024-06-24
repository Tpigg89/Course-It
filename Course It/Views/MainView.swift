//
//  MainView.swift
//  Course It
//
//  Created by Thomas Pigg on 23/06/2024.
//

import SwiftUI

struct MainView: View {
    
    let subjectsData: SubjectsData
    @State var selectedSubject: Subject?
    @State var showingTakenCourses = false
    
    var body: some View {
        NavigationStack {
            
            VStack {
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(subjectsData.subjects, id: \.subjectName) { name in
                            Button(action: {
                                selectedSubject = name
                                print(name)
                            }, label: {
                                SubjectButton(subjectName: name.subjectName)
                            })
                        }
                    } 
                } .navigationTitle("Subjects")
                    .toolbar(content: {
                        ToolbarItem(placement: .primaryAction, content: {
                            Image(systemName: "person.circle")
                                .foregroundStyle(showingTakenCourses ? .green : .primary)
                                .onTapGesture {
                                    showingTakenCourses.toggle()
                                } .animation(.easeIn, value: showingTakenCourses)
                        })
                    })
                
                VStack {
                    if showingTakenCourses {
                        Spacer()
                        TakenCoursesView()
                        Spacer()
                    } else {
                        
                        HStack {
                            Text("Courses")
                                .padding()
                                .font(.subheadline)
                            Spacer()
                        }
                    CourseView(subject: selectedSubject)
                    }
                       
                }
            }
        }
    }
}

//#Preview {
//    MainView(subjectsData: Subjects())
//}

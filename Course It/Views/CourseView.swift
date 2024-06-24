//
//  CourseView.swift
//  Course It
//
//  Created by Thomas Pigg on 23/06/2024.
//

import SwiftUI

struct CourseView: View {
    
    let subject: Subject?
    @State var showingDino = false
    
    var body: some View {
       
           
                if subject != nil {
                    List {
                        ForEach(subject!.courses, id: \.courseTitle) { name in
                            NavigationLink(name.courseTitle, destination: CourseDetailView(course: name))
                        }
                    }
                } else {
                    VStack {
                        Spacer()
                        
                        Text("Select a subject")
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
                        Spacer()
                    }
                }
            
    }
            
        
    }


//#Preview {
//    CourseView()
//}

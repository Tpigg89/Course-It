//
//  AddCourseButton.swift
//  Course It
//
//  Created by Thomas Pigg on 24/06/2024.
//

import SwiftUI

struct AddCourseButton: View {
    
    @State var addedToCourses = false
    let gradient = RadialGradient(colors: [.white, .cyan], center: .center, startRadius: 0, endRadius: 200)
    
    var body: some View {
        
        
        ZStack {
            Capsule()
                .frame(width: 300, height: 70)
                .foregroundStyle(gradient)
                .shadow(radius: 5)
            
            HStack {
                Text(addedToCourses ? "Leave Course" : "Take Course")
                    .font(.title)
                    .bold()
                    .foregroundStyle(addedToCourses ? Color.green: Color.primary)
                    .animation(.spring, value: addedToCourses)
                Image(systemName: "checkmark.circle")
                    .resizable()
                    .bold()
                    .frame(width: 35, height: 35)
                    .opacity(addedToCourses ? 1.0 : 0.0)
                    .foregroundStyle(addedToCourses ? Color.green: Color.primary)
                    .rotationEffect(.degrees(360))
                    .animation(.easeIn, value: addedToCourses)
                
                    
            }
            
        } .onTapGesture {
            addedToCourses.toggle()
        }
        
        
        
    }
}

#Preview {
    AddCourseButton()
}

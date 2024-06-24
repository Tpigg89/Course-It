//
//  CourseProgressView.swift
//  Course It
//
//  Created by Thomas Pigg on 23/06/2024.
//

import SwiftUI

struct CourseProgressView: View {
    
    @State var courseProgress: Double = 0
    
    var body: some View {
        VStack {
            Text("Course Progress - \(courseProgress.rounded(.up))0%")
            ProgressView(value: courseProgress, total: 10.0 )
                .padding(.horizontal)
                Button(action: {
                    if courseProgress != 10 {
                        courseProgress += 1
                    }
                    
                }, label: {
                    HStack{
                        Text("Done next section")
                        Image(systemName: "plus.circle")
                    }
                    })
        } .padding(.vertical)
            
            
        }
    }


#Preview {
    CourseProgressView()
}

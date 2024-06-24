//
//  SubjectButton.swift
//  Course It
//
//  Created by Thomas Pigg on 23/06/2024.
//

import SwiftUI

struct SubjectButton: View {
    
    var subjectName: String
    let gradient = RadialGradient(colors: [.white, .cyan], center: .center, startRadius: 0, endRadius: 200)

    var body: some View {
        ZStack {
            Capsule()
                .frame(width: 200, height: 40)
                .foregroundStyle(gradient)
                .shadow(radius: 5)
            Text(subjectName)
                .bold()
                .foregroundStyle(.primary)
        }
        
    }
}

#Preview {
    SubjectButton(subjectName: "Maths")
}

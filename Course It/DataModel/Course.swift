//
//  Course.swift
//  Course It
//
//  Created by Thomas Pigg on 23/06/2024.
//

import Foundation

struct Course: Codable {
    let courseTitle: String
    let description: String
    let instructors: [Instructor]
//    var id = UUID()
}

//
//  Hike.swift
//  LearnSwiftUI
//
//  Created by baisampayan saha on 6/11/24.
//

import Foundation

struct Hike: Identifiable, Hashable {
    let id: String = UUID().uuidString
    let name: String
    let photo: String
    let miles: Double
}

//
//  EnvironmentModel.swift
//  LearnSwiftUI
//
//  Created by baisampayan saha on 6/14/24.
//

import Foundation
import Observation

@Observable
class Fruits {
    var fruits: [String] = ["apple", "pear", "grapes"]
    var isFruitsAvailable: Bool = false
}

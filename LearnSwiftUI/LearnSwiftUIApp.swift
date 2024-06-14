//
//  LearnSwiftUIApp.swift
//  LearnSwiftUI
//
//  Created by baisampayan saha on 5/21/24.
//

import SwiftUI

@main
struct LearnSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(Fruits())
        }
    }
}

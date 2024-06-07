//
//  ContentView.swift
//  LearnSwiftUI
//
//  Created by baisampayan saha on 5/21/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Circle()
            .fill(.pink)
            .frame(width: 100, height: 100, alignment: .center)
            .overlay {
                Text("1")
                    .font(.largeTitle)
                    .foregroundStyle(.yellow)
            }
    }
}

#Preview {
    ContentView()
}

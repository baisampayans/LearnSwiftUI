//
//  ContentView.swift
//  LearnSwiftUI
//
//  Created by baisampayan saha on 5/21/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       Rectangle()
            .frame(width: 100, height: 100, alignment: .bottom)
            .overlay {
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 50, height: 50, alignment: .bottomLeading)
                
                Text("hi")
                    .foregroundStyle(Color.white)
                    .frame(width: 50, height: 50, alignment: .bottomLeading)
            }
    }
}

#Preview {
    ContentView()
}

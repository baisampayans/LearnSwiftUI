//
//  ContentView.swift
//  LearnSwiftUI
//
//  Created by baisampayan saha on 5/21/24.
//

import SwiftUI

struct ContentView: View {
    
    let title : String
    let count : Int
    let backgroundColor : Color
    
    init(fruit: Fruit, count: Int) {
        
        self.count = count
        
        if fruit == .apple {
            self.backgroundColor = .red
            self.title = "Apples"
        } else if fruit == .orange {
            self.backgroundColor = .orange
            self.title = "Oranges"
        } else {
            self.backgroundColor = .green
            self.title = "Peaches"
        }
        
    }
    
    enum Fruit {
    case apple
    case orange
    }
    
    var body: some View {
        VStack {
            Text("\(count)")
                .font(.largeTitle)
            Text(title)
        }
        .frame(width: 120, height: 120)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
    HStack {
        ContentView(fruit: .apple, count: 5)
        ContentView(fruit: .orange, count: 15)
    }
}

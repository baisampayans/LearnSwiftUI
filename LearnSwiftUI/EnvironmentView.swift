//
//  EnvironmentView.swift
//  LearnSwiftUI
//
//  Created by baisampayan saha on 6/14/24.
//

import SwiftUI

struct EnvironmentView: View {
    @Environment(Fruits.self) private var fruits: Fruits
    @Bindable private var isFruitsAvailable = Fruits()
    
    var body: some View {
        List {
            Toggle("Are fruits available?", isOn: $isFruitsAvailable.isFruitsAvailable)
//                .toggleStyle(.switch)
//                .fixedSize()
            ForEach(fruits.fruits, id: \.self) { fruit in
                Label("\(fruit)", systemImage: "\(isFruitsAvailable.isFruitsAvailable ? "carrot.fill" : "carrot")")
                    .foregroundStyle(isFruitsAvailable.isFruitsAvailable ? .green : .black)
                    
            }//end of foreach
        }//end of list
    }//end of body
}

#Preview {
    EnvironmentView()
        .environment(Fruits())
}

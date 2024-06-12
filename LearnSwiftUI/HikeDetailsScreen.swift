//
//  HikeDetailsScreen.swift
//  LearnSwiftUI
//
//  Created by baisampayan saha on 6/12/24.
//

import SwiftUI

struct HikeDetailsScreen: View {
    
    let hike: Hike
    @State private var zoomed: Bool = false
    
    var body: some View {
        VStack {
            Image(hike.photo)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation(.easeInOut){
                        zoomed.toggle()
                    }
                }
            Text(hike.name)
                .font(.headline)
                .fontWeight(.bold)
            Text("\(hike.miles.formatted()) miles")
                .font(.subheadline)
                .foregroundStyle(.secondary)
            Spacer()
        }
        .navigationTitle(hike.name)
    }
}

#Preview {
    HikeDetailsScreen(hike: Hike(name: "Test", photo: "tam", miles: 2))
}

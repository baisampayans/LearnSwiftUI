//
//  ContentView.swift
//  LearnSwiftUI
//
//  Created by baisampayan saha on 5/21/24.
//

import SwiftUI

struct ContentView: View {
    
    let hike : [Hike] = [
        Hike(name: "Salmonberry Trails", photo: "sal", miles: 6),
        Hike(name: "Huckleberry fin gateaway", photo: "tam", miles: 5.8),
        Hike(name: "Tom's dune", photo: "tom", miles: 5),
    ]
    
    var body: some View {
        NavigationStack {
            List(hike) { hike in
                NavigationLink(value: hike) {
                    HikeCellView(hike: hike)
                }//end of navlink
            }// end of list
            .navigationTitle("Hikes")
            .navigationDestination(for: Hike.self) { hike in
               HikeDetailsScreen(hike: hike)
            }
        }//end of navstack
    } //end of body
}

#Preview {
    ContentView()
}

struct HikeCellView: View {
    
    var hike: Hike
    
    var body: some View {
        HStack {
            Image(hike.photo)
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipShape(RoundedRectangle(cornerRadius: 10 ))
            VStack(alignment: .leading) {
                Text(hike.name)
                    .font(.title3)
                    .fontWeight(.bold)
                Text("\(hike.miles.formatted())")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }//end of Vstack
        }
    }
}

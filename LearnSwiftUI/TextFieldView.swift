//
//  TextFieldView.swift
//  LearnSwiftUI
//
//  Created by baisampayan saha on 6/12/24.
//

import SwiftUI

struct TextFieldView: View {
    
    @State private var namesList: [String] = ["Amar", "Akbar", "Anthony", "Sonu", "Tinku", "Mota", "PPG"]
    @State private var textFieldValue: String = ""
    @State private var searchFieldValue: String = ""
    @State private var searchableNameList: [String] = []
    @FocusState private var isTextFieldFocused: Bool

    
    var body: some View {
        List {
            TextField(text: $textFieldValue) {
                Text("enter friends' name to add...")
            }
            .focused($isTextFieldFocused)
            .onSubmit {
                namesList.insert(textFieldValue, at: 0)
                textFieldValue = ""
                searchableNameList = namesList
            }
            ForEach(searchableNameList, id:\.self) { name in
                Text(name)
                    .foregroundStyle(isTextFieldFocused ? .black : .pink)
            }//end of for each
        }//end of list
        .listStyle(.plain)
        .navigationTitle("Friends")
        .searchable(text: $searchFieldValue)
        .onChange(of: searchFieldValue, {
            
            if searchFieldValue.isEmpty {
                searchableNameList = namesList
            } else {
                searchableNameList = namesList.filter {$0.contains(searchFieldValue)}
            }
            
        })//end of onChange
        .onAppear(perform: {
            searchableNameList = namesList
        })
    }//end of body
}

#Preview {
    NavigationStack {
        TextFieldView()
    }
}

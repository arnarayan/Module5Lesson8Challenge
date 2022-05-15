//
//  ContentView.swift
//  Module5Lesson8Challenge
//
//  Created by Anand Narayan on 2022-05-14.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedNumber = "1"
    @State var selectedTag: Int?
    
    var body: some View {
        NavigationView {
            VStack {
                Picker("Numbers", selection: $selectedNumber) {
                    Text("1").tag("1")
                    Text("2").tag("2")
                    Text("3").tag("3")
                    Text("4").tag("4")
                    Text("5").tag("5")
                    Text("6").tag("6")
                    Text("7").tag("7")
                }.pickerStyle(.wheel)
                NavigationLink(
                    destination: YourNumberView(selectedTag: $selectedTag, selectedNumber: $selectedNumber),
                    tag: 1,
                    selection: $selectedTag,
                    label: {
                    Text("Go to view \(selectedNumber)" )
                })
            }
        }.navigationBarHidden(true)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

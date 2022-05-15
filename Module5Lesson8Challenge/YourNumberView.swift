//
//  YourNumberView.swift
//  Module5Lesson8Challenge
//
//  Created by Anand Narayan on 2022-05-14.
//

import SwiftUI

struct YourNumberView: View {
    
    @Binding var selectedTag: Int?
    @Binding var selectedNumber: String
    var body: some View {
        
        VStack {
            Text(selectedNumber).bold().font(.system(size: 24))
            Button(action: {
                selectedTag = nil
            }, label: {
                Text("Go Back!")
            })
        }.navigationBarHidden(true)
        

    }
}

struct YourNumberView_Previews: PreviewProvider {
    static var previews: some View {
        YourNumberView(selectedTag: .constant(1), selectedNumber: .constant("1"))
    }
}

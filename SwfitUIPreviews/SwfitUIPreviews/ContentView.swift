//
//  ContentView.swift
//  SwfitUIPreviews
//
//  Created by Morgan Kang on 2022/03/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Same ContentView")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone 8 Plus")
                .preferredColorScheme(.light)
            ContentView()
                .previewDevice("iPhone 12")
                .preferredColorScheme(.dark)
        }
    }
}

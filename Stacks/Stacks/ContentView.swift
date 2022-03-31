//
//  ContentView.swift
//  Stacks
//
//  Created by Kwangjun Kim on 2022/03/31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            ZStack {
                Text("ZStack Things")
            }
            Spacer()
            Color.red
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}

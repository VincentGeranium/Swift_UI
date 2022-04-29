//
//  ContentView.swift
//  NavigationScrollList
//
//  Created by Kwangjun Kim on 2022/04/29.
//

import SwiftUI

struct ContentView: View {
    var baits: [String] = ["Spiner Bait", "i Arrow 65", "Picro 68", "Vision One ten Jr.", "Hide up Crank HU", "Double Ringer", "Speed Crow", "DAMIKI HYDRA"]
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Line Select.")
                    .padding()
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(1...100, id: \.self) { num in
                            Text("\(num) lb.")
                        }
                    }
                }
                .padding(.horizontal)
                
                List(baits, id: \.self) { bait in
                    Text(bait)
                    
                }
                
                NavigationLink {
                    Text("Second View").navigationTitle(
                        Text("Second Home")
                    )
                } label: {
                    ButtonLableSetup(title: "Go to Second")
                }

            }
            .navigationTitle("Home")
        }
    }
}

struct ButtonLableSetup: View {
    
    var title: String
    
    var body: some View {
        
        Text(title)
            .bold()
            .font(.system(size: 19))
            .lineLimit(1)
            .minimumScaleFactor(0.75)
            .frame(width: 200, height: 50, alignment: .center)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

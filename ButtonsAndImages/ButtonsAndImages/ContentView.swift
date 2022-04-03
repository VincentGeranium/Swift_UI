//
//  ContentView.swift
//  ButtonsAndImages
//
//  Created by Kwangjun Kim on 2022/04/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "paperplane.circle.fill")
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150, alignment: .center)
                .padding()
            
            Image("gojo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 220, height: 330, alignment: .center)
                .padding()
            
            Button(action: {
                print("did tap button.")
            }, label: {
                ButtonLabelSetup(title: "Select")
            })
        }
    }
}

struct ButtonLabelSetup: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.system(size: 24))
            .bold()
            .frame(width: 220, height: 50, alignment: .center)
            .background(Color.purple)
            .foregroundColor(Color.white)
            .cornerRadius(10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}

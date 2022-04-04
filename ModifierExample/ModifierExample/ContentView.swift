//
//  ContentView.swift
//  ModifierExample
//
//  Created by Kwangjun Kim on 2022/04/04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("moviePoster")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 100, alignment: .center)
                .padding([.bottom, .top], 100)
            
            Button(action: {
                didTapButton()
            }, label: {
                ButtonLabelContent(title: "New Button")
            })
        }
    }
}

struct ButtonLabelContent: View {
    var title: String
    var body: some View {
        Text(title)
            .bold()
            .font(.system(size: 22))
            .frame(width: 220, height: 50, alignment: .center)
            .background(Color.purple)
            .cornerRadius(10)
            .foregroundColor(Color.white)
    }
}

func didTapButton() {
    print("button tapped")
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.dark)
    }
}

//
//  ContentView.swift
//  CardFlip
//
//  Created by Morris Richman on 2022-05-12.
//

import SwiftUI
import CardFlip

struct ContentView: View {
    var body: some View {
        ZStack {
            CardFlip(cardFront: {
                VStack {
                    Text("Front View")
                }
            }, cardBack: {
                VStack {
                    Text("Back View")
                }
            }, showBorder: true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

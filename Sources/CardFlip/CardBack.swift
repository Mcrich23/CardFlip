//
//  CardBack.swift
//  
//
//  Created by Morris Richman on 5/13/22.
//

import Foundation
import SwiftUI

struct CardBack<Content: View>: View {
    let width : CGFloat
    let height : CGFloat
    @State var showBoarder: Bool
    @Binding var degree : Double
    @ViewBuilder var view: () -> Content

    var body: some View {
        ZStack {
            if showBoarder {
                RoundedRectangle(cornerRadius: 20)
                    .fill(.white)
                    .frame(width: width, height: height)
                    .shadow(color: .gray, radius: 2, x: 0, y: 0)
            }

            view()// Show passed in view

        }.rotation3DEffect(Angle(degrees: degree), axis: (x: 0, y: 1, z: 0))

    }
}

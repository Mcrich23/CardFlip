//
//  CardFlip.swift
//  
//
//  Created by Morris Richman on 5/13/22.
//

import SwiftUI


/**
 An easy view that allows you to flip a card on tap.
 
 - parameter cardFront: The view for the front of the card.
 - parameter cardBack: The view for the back of the card.
 - parameter showBorder: Whether to show the borader of the card or not.
 
 # Example #
 ```
 CardFlip(cardFront: {
     VStack {
         Text("Front View")
     }
 }, cardBack: {
     VStack {
         Text("Back View")
     }
 }, showBorder: true)
 ```
 
 */

public struct CardFlip<Content: View>: View {
    @State var backDegree = 0.0
    @State var frontDegree = -90.0
    @State var isFlipped = false
    @State var showBorder: Bool
    @ViewBuilder var cardFront: () -> Content
    @ViewBuilder var cardBack: () -> Content

    let width : CGFloat = 200
    let height : CGFloat = 250
    let durationAndDelay : CGFloat = 0.3
    
    public init(cardFront: @escaping () -> Content, cardBack: @escaping () -> Content, showBorder: Bool) {
        self.cardFront = cardBack
        self.cardBack = cardFront
        self.showBorder = showBorder
    }

    func flipCard () {
        isFlipped = !isFlipped
        if isFlipped {
            withAnimation(.linear(duration: durationAndDelay)) {
                backDegree = 90
            }
            withAnimation(.linear(duration: durationAndDelay).delay(durationAndDelay)){
                frontDegree = 0
            }
        } else {
            withAnimation(.linear(duration: durationAndDelay)) {
                frontDegree = -90
            }
            withAnimation(.linear(duration: durationAndDelay).delay(durationAndDelay)){
                backDegree = 0
            }
        }
    }

    public var body: some View {
        ZStack {
            CardFront(width: width, height: height, showBoarder: showBorder, degree: $frontDegree) {
                cardFront()
            }
            CardBack(width: width, height: height, showBoarder: showBorder, degree: $backDegree) {
                cardBack()
            }
        }.onTapGesture {
            flipCard ()
        }
    }
}

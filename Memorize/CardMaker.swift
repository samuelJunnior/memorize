//
//  CardMaker.swift
//  Memorize
//
//  Created by Pedro Henrique on 22/07/21.
//

import SwiftUI


struct CardMaker: ViewModifier {
    
    let cornerRadius: CGFloat
    let lineWidth: CGFloat
    
    init(cornerRadius cr: CGFloat = 12, lineWidth lw: CGFloat = 4) {
        self.cornerRadius = cr
        self.lineWidth = lw
    }
    
    func body(content: Content) -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: cornerRadius)
                .fill(Color.white)
            RoundedRectangle(cornerRadius: cornerRadius)
                .stroke(lineWidth: lineWidth)
            content
        }
        .padding()
    }
    
}

extension View {
    
    func makeCard() -> some View {
        return self.modifier(CardMaker())
    }
    
    func makeCard(withCornerRadius cornerRadius: CGFloat, andLineWidth lineWidth: CGFloat) -> some View {
        return self.modifier(CardMaker(cornerRadius: cornerRadius, lineWidth: lineWidth))
    }
    
}

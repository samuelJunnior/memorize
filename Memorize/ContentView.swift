//
//  ContentView.swift
//  Memorize
//
//  Created by Pedro Henrique on 22/07/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Text("🥎")
                .makeCard()
            
            Text("⚾️")
                .makeCard()
            
            Text("🏀")
                .makeCard()
        }
        .font(Font.system(size: 120))
        .foregroundColor(Color.red)
    
    }
}

struct CardView: View {
    
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 24)
                .fill(Color.white)
            RoundedRectangle(cornerRadius: 24)
                .stroke(lineWidth: 4)
            Text("🥎")
                .font(Font.system(size: 120))
        }
        .foregroundColor(Color.red)
        .padding()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

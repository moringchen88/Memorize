//
//  ContentView.swift
//  Memorize
//
//  Created by caichen on 2020/10/21.
//  Copyright © 2020 caichen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            ForEach(0..<4){ index in
                CardView(isFaceUp: false)
            }
            
        }
        .padding()
        .foregroundColor(Color.orange)
        .font(Font.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct CardView: View {
    var isFaceUp : Bool
    var body: some View {
        ZStack{
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth:3)
                Text("😱")
            }
            else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}

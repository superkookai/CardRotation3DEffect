//
//  ContentView.swift
//  CardRotation3DEffect
//
//  Created by Weerawut Chaiyasomboon on 3/12/2566 BE.
//

import SwiftUI

struct ContentView: View {
    @State private var isFlip: Bool = false
    
    var body: some View {
        VStack {
            if !isFlip {
                CardView(title: "What's Mechanics?", backgroundColor: .blue)
            } else {
                CardView(title: "It's the study of Mechanical Engineering", backgroundColor: .green)
                    .rotation3DEffect(Angle(degrees: 180), axis: (x: 0.0, y: 1.0, z: 0.0))
            }
        }
        .rotation3DEffect(
            isFlip ? Angle(degrees: 180) : .zero,
            axis: (x: 0.0, y: 1.0, z: 0.0)
        )
        .onTapGesture {
            withAnimation(.default){
                isFlip.toggle()
            }
        }
    }
}

#Preview {
    ContentView()
}

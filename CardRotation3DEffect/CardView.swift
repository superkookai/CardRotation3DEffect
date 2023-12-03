//
//  CardView.swift
//  CardRotation3DEffect
//
//  Created by Weerawut Chaiyasomboon on 3/12/2566 BE.
//

import SwiftUI

struct CardView: View {
    let title: String
    let backgroundColor: Color
    
    var body: some View {
        Text(title)
            .font(.title)
            .multilineTextAlignment(.center)
            .frame(maxWidth: .infinity, maxHeight: 250)
            .background(backgroundColor)
            .clipShape(RoundedRectangle(cornerRadius: 25.0))
            .padding()
    }
}

#Preview {
    CardView(title: "What is Appreciation?", backgroundColor: .blue)
}

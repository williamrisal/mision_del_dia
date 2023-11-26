//
//  ButtonGainComponent.swift
//  misión-del-dia
//
//  Created by William Risal on 19/11/2023.
//

import SwiftUI

struct ButtonGainComponent: View {
    @State  var TextButton: String;
    var body: some View {
        Button(action: {}) {
            Text(TextButton + " 🎁")
                .font(.subheadline)
                .bold()
                .padding(10)
                .foregroundColor(.white)
                .background(VisualEffectBlur(blurStyle: .dark).opacity(0.4))
                .cornerRadius(10)
        }
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.black, lineWidth: 0.1)
        )
        .shadow(color: Color.white, radius: 1)
    }
}

#Preview {
    ButtonGainComponent(TextButton: "test")
}

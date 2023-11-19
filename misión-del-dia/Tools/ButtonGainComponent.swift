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
            Text(TextButton + " 💰")
                .font(.subheadline)
                .bold()
                .padding(10)
                .foregroundColor(.black)
                .background(Color.orange)
                .cornerRadius(80)
        }
        .overlay(
            RoundedRectangle(cornerRadius: 80)
                .stroke(Color.gray, lineWidth: 3)
        )
    }
}

#Preview {
    ButtonGainComponent(TextButton: "test")
}

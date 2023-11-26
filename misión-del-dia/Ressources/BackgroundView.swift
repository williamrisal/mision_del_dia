//
//  BackgroundView.swift
//  convertisseur
//
//

import SwiftUI

struct BackgroundView: View {
    var value: Int

    var firstColor: Color {
        return (value == 0) ? Color.red : (value == 1) ? Color.sexyBlueSecondColor : (value == 2) ? Color.cyan: Color.pink
    }

    var secondColor: Color {
        return (value == 0) ? Color.orange : (value == 1) ? Color.green : (value == 2) ? Color.blue : Color.cyan
    }

    var body: some View {
        LinearGradient(gradient: Gradient(colors: [firstColor, secondColor]), startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
    }
}

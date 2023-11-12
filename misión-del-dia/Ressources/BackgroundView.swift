//
//  BackgroundView.swift
//  convertisseur
//
//  Created by Cédric CALISTI on 27/08/2022.
//

import SwiftUI

struct BackgroundView: View {
    
    var firstColor: Color = Color.duskFirstColor
    var secondColor: Color = Color.relaySecondColor

    var body: some View {
        

                LinearGradient(gradient: Gradient(colors: [firstColor, secondColor]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()

    }
}

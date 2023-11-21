//
//  Sold.swift
//  misión-del-dia
//
//  Created by jordan on 17/11/2023.
//

import SwiftUI

struct SoldView: View {
    @State var Coin = "926.02"

    var body: some View {
        HStack (spacing: -5) {
            Text(Coin)
                .padding(5)
            Image(systemName: "app.gift.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(10)
        }
        .foregroundColor(.white)
        .padding(5)
        .background(VisualEffectBlur(blurStyle: .dark))
        .cornerRadius(10)
    }
}


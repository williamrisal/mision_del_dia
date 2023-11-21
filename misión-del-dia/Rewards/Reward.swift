//
//  Reward.swift
//  misión-del-dia
//
//  Created by jordan on 17/11/2023.
//

import SwiftUI

struct RewardView: View {
    @Binding var isTapped: Int
    var index: Int
    var name: String
    var sold: Double
    var price: Int

    var body: some View {
        VStack {
            HStack {
                Image("\(index + 1)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .bottom)
            .background(Color.black)

            VStack(alignment: .leading) {
                Text(name)
                    .font(.headline)
                Spacer()
                HStack {
                    Text("Más información")
                        .underline()
                        .foregroundStyle(.blue)
                        .font(.subheadline)
                    Spacer()
                    HStack {
                        Text(String(price))
                        Image(systemName: "app.gift.fill")
                    }
                    .foregroundColor(.white)
                    .padding(5)
                    .background(Int(sold) >= price ? .green.opacity(0.8) : .red.opacity(0.8))
                    .cornerRadius(10)
                }
                
            }
            .frame(height: (8 / 100) * UIScreen.main.bounds.height)
            .padding()
            .background(Color.white)

            Spacer()
        }
        .frame(width: (80 / 100) * UIScreen.main.bounds.width, height: (40 / 100) * UIScreen.main.bounds.height)
        .background(Color.white)
        .onTapGesture {
            isTapped = index + 1
        }
        .cornerRadius(15)
        .shadow(radius: 5)
    }
}

//
//  Buy.swift
//  misión-del-dia
//
//  Created by jordan on 17/11/2023.
//

import SwiftUI

struct BuyView: View {
    @Binding var isTapped: Int
    var sold: Double
    var name: String
    var price: Int

    var body: some View {
        VStack {
            Spacer()
            HStack {
                Text("← Vuelta atrás")
                    .underline()
                    .foregroundStyle(.white)
                    .font(.subheadline)
                    .onTapGesture {
                        isTapped = 0
                    }
                    .padding(15)
                Spacer()
            }
            
            Image("\(isTapped)")
                .resizable()
                .aspectRatio(contentMode: .fit)

            VStack {
                HStack {
                    Spacer()
                    Text(name)
                        .foregroundStyle(.white)
                    Spacer()
//                    HStack {
//                        Text(String(price))
//                        Image(systemName: "app.gift.fill")
//                    }
//                        foregroundColor(.white)
//                        .padding(5)
//                        .background(Int(sold) >= price ? .green.opacity(0.6) : .red.opacity(0.6))
//                        .cornerRadius(10)
                    Spacer()
                }
                .frame(maxHeight: (75 / 100) * UIScreen.main.bounds.height)
             
            }
            Spacer()
        }
    }
}



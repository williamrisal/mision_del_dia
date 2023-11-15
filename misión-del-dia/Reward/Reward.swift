//
//  Reward.swift
//  misión-del-dia
//
//  Created by jordan on 15/11/2023.
//

import SwiftUI

struct RewardView: View {
    @State private var Coin = "926.02"

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ScrollView {
                    VStack(spacing: 35) {
                        ForEach(0..<5) { index in
                            VStack {
                                Image(systemName: "photo")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: geometry.size.width, height: geometry.size.height * 0.25)
                                    .background(Color.red)
                                
                                VStack {
                                    Text("\(index + 1) Le titre du Gift/Rewards")
                                    Text("Lien pour en savoir +")
                                }
                                .background(.red)
                            }
                            .frame(width: (80 / 100) * UIScreen.main.bounds.width, height: (30 / 100) * UIScreen.main.bounds.height)
                            .padding(10)
                            .background(Color.white)
                            .cornerRadius(20)
                        }
                    }
                    .padding(.top, (15 / 100) * UIScreen.main.bounds.height)
                    Spacer(minLength: (15 / 100) * UIScreen.main.bounds.height)
                }
                
                ZStack {
                    HStack {
                        Text("")
                        Spacer()
                    }
                    .padding(50)
                    
                    HStack {
                        Spacer()
                        HStack (spacing: 10) {
                            Text(Coin)
                            Image(systemName: "app.gift.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                        .foregroundColor(.white)
                        .padding(10)
                        .background(Color.black.opacity(0.5))
                        .cornerRadius(5)
                    }
                    .padding(50)
                    
                }
                .frame(width: UIScreen.main.bounds.width, height: (10 / 100) * UIScreen.main.bounds.height)
                .position(x: UIScreen.main.bounds.width / 2, y: (10 / 100) * UIScreen.main.bounds.height)
            }
        }
    }
}

//
//  Reward.swift
//  misión-del-dia
//
//  Created by jordan on 15/11/2023.
//

import SwiftUI
struct RewardsView: View {
    
    struct reward: Identifiable {
        let id = UUID()
        let Name: String
        let Price: Int
    }
    
    let rewards = [
        reward(Name: "Iphone 15 Pro Max", Price: 9000),
        reward(Name: "Air Pod Pro 2023", Price: 1200),
        reward(Name: "PlayStation 5", Price: 4900),
    ]

    @State private var sold: Double = 1926.02

    @State var isTapped: Int = 0

    var body: some View {
        ZStack {
            ScrollView {
                VStack(spacing: 35) {
                    ForEach((0..<rewards.count).indices, id: \.self) { index in
                     //   RewardsView(isTapped: $isTapped, index: index, name: rewards[index].Name, sold: sold, price: rewards[index].Price)
                    }
                }
                .padding(.top, (8 / 100) * UIScreen.main.bounds.height)
                Spacer(minLength: (15 / 100) * UIScreen.main.bounds.height)
            }

            ZStack {
                HStack {
                    Spacer()
                    //SoldView()
                }
                .padding(15)
                .frame(height: (10 / 100) * UIScreen.main.bounds.height)
            }
            .frame(width: UIScreen.main.bounds.width, height: (10 / 100) * UIScreen.main.bounds.height)
            .position(x: UIScreen.main.bounds.width / 2, y: (10 / 100) * UIScreen.main.bounds.height)
            
            if isTapped != 0 {
                Color.black.opacity(0.96)
                    .edgesIgnoringSafeArea(.all)
             //   BuyView(isTapped: $isTapped, sold: sold, name: "\(rewards[isTapped - 1].Name)", price: rewards[isTapped - 1].Price)
            }
        }
    }
}

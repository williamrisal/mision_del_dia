//
//  SquareView.swift
//  misión-del-dia
//
//  Created by William Risal on 19/11/2023.
//

import SwiftUI

struct SquareView: View {
    var body: some View {
        VStack {
            Rectangle()
                .fill(Color.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 7)
                        .stroke(Color.red.opacity(0.9), lineWidth: 15)
                )
                .opacity(0.9)
                .frame(width: 130, height: 70)
                .cornerRadius(10)
                .shadow(color: Color.gray.opacity(0.6), radius: 5, x: 0, y: 2)
                .padding(.bottom, -35)
                .overlay(
                    VStack{
                        //remainingSeconde recupere dans la base de donée
                        CountdownView(remainingSeconds: 12 * 60 * 60)
                    }
                )
                .zIndex(1)

            Rectangle()
                .fill(Color.white)
                .opacity(1)
                .frame(width: 360, height: 200)
                .cornerRadius(15)
                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 0)
                .overlay(
                    VStack{
                        Spacer()
                        Text("\"Venez en cours en pyjama\"")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.blue)
                        Text("⭐️⭐️⭐️")
                            .font(.title3)
                            .bold()
                            .foregroundColor(.yellow)
                        HStack {
                            Spacer()
                            ButtonGainComponent(TextButton: "100")
                                .padding(15)
                        }
                    }
                )
            
            Button(action: {}) {
                Text("Publier")
                    .font(.subheadline)
                    .bold()
                    .frame(width: 100, height: 30)
                    .padding(6)
                    .foregroundColor(.white)
                    .background(BackgroundView(value: 1))
                    .cornerRadius(80)
                
            }
            .overlay(
                RoundedRectangle(cornerRadius: 80)
                    .stroke(Color.white, lineWidth: 10)
            ).padding(.top, -35)
        }
        .padding(.top, -80)
    }
}

#Preview {
    SquareView()
}

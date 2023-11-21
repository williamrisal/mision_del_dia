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
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.red.opacity(0.8), lineWidth: 20)
                )
                .opacity(0.9)
                .frame(width: 130, height: 70)
                .cornerRadius(10)
                .shadow(color: Color.gray.opacity(0.6), radius: 5, x: 0, y: 2)
                .padding(.bottom, -35)
                .overlay(
                    VStack{
                        Text("10:20:21")
                            .fontWeight(.bold)
                            .foregroundColor(Color.red.opacity(0.8))
                            .padding(.top, 36)
                    }
                )
                .zIndex(1)

            Rectangle()
                .fill(Color.white)
                .opacity(0.9)
                .frame(width: 360, height: 200)
                .cornerRadius(15)
                .shadow(color: Color.gray, radius: 5, x: 0, y: 2)
                .overlay(
                    VStack{
                        Text("\"Venez en cours en pyjama\"")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.blue)
                        
                        ButtonGainComponent(TextButton: "8000")
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

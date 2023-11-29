//
//  AccountProfilView.swift
//  misión-del-dia
//
//  Created by William Risal on 25/11/2023.
//

import SwiftUI

struct AccountProfilView: View {
    var body: some View {
        Rectangle()
            .fill(Color.white)
            .opacity(0.9)
            .frame(width: 360, height: 200)
            .cornerRadius(15)
            .shadow(color: Color.gray, radius: 5, x: 0, y: 2)
            .overlay(
                VStack{
                    HStack{
                        Image("TikTokLogo")
                            .resizable()
                            .frame(width: 120, height: 80)
                            .aspectRatio(contentMode: .fit)
                        
                    }
                    .frame(width: 70, height: 70)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .padding(.top, -80)
                    .zIndex(1)

                    Text("Ups... Tu perfil de TikTok no está vinculado")
                        .font(.title2)
                        .bold()
                        .foregroundColor(.blue)
                    Button(action: {
                        TikTokAuthManager().authenticate()
                    }) {
                        
                        Text("Vincular mi cuenta de TikTok")
                            .bold()
                            .foregroundColor(.white)
                            .padding()
                            .background(BackgroundView(value: 3))
                            .cornerRadius(59)
                    }
                }
            )
        Spacer()
    }
}

#Preview {
    AccountProfilView()
}

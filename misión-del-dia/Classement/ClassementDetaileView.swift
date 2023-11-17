//
//  ClassementDetaileView.swift
//  misión-del-dia
//
//  Created by William Risal on 17/11/2023.
//

import SwiftUI

struct ClassementDetaileView: View {
    var body: some View {
        ZStack{
            BackgroundView(value: 1);
            VStack{
                Spacer()
                HStack{
                    Button(action: {
                        // Action à exécuter lors du tap sur le bouton "Voir le classement"
                    }) {
                        Text("Journalier")
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .padding(.vertical, 1)
                            .padding(.horizontal, 20)
                            .bold()
                    }
                    .padding(4)
                    .overlay(
                        RoundedRectangle(cornerRadius: 80)
                            .stroke(Color.white, lineWidth: 2)
                            .opacity(0.4)
                    )
                    Button(action: {
                        // Action à exécuter lors du tap sur le bouton "Voir le classement"
                    }) {
                        Text("Total")
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .padding(.vertical, 1)
                            .padding(.horizontal, 20)
                            .bold()
                    }
                    .padding(4)
                    .overlay(
                        RoundedRectangle(cornerRadius: 80)
                            .stroke(Color.white, lineWidth: 2)
                            .opacity(0.4)
                    )
                }
                ClassementComponent(ButtonActivate: false)
            }
        }
    }
}

#Preview {
    ClassementDetaileView()
}

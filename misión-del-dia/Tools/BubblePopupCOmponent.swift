//
//  BubblePopupCOmponent.swift
//  misión-del-dia
//
//  Created by William Risal on 20/11/2023.
//

import SwiftUI

struct BubblePopupCOmponent: View {
    var body: some View {
        ZStack {
            Color.clear
                .edgesIgnoringSafeArea(.all)

            VStack {
                Spacer()

                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.blue, lineWidth: 2)
                    )
                    .frame(width: 200, height: 100)
                    .shadow(radius: 5)
                    .overlay(
                        Text("Hello, World!")
                            .foregroundColor(.black)
                    )

                Spacer()
            }
        }
    }
}

#Preview {
    BubblePopupCOmponent()
}

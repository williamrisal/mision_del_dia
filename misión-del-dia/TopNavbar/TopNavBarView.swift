//
//  TopNavBarView.swift
//  misión-del-dia
//
//  Created by William Risal on 20/11/2023.
//

import SwiftUI

struct TopNavBarView: View {
    @State private var show = false

    var body: some View {
        HStack {
            HStack {
                SoldView(Coin: "926.02")
            }
            .padding(15)
            .frame(height: (10 / 100) * UIScreen.main.bounds.height)
            Spacer()
            
            HStack{
                Button(action: {
                    self.show = true
                }, label: {
                    Image(systemName: "bell")
                        .resizable()
                        .frame(width:25, height: 25)
                })
                .foregroundColor(.white)
                .opacity(0.8)
                .popover(isPresented: self.$show,
                         attachmentAnchor: .point(.center),
                         arrowEdge: .top,
                         content: {
                    BellView()
                        .presentationCompactAdaptation(.none)
                })
                
                Button(action: {
                }, label: {
                    Image(systemName: "ellipsis.circle")
                        .resizable()
                        .frame(width:25, height: 25)
                })
                .foregroundColor(.white)
                    .opacity(0.8)
            }
            .padding(.horizontal, 15)
        }
        .padding(.bottom, -96)
    }
}

#Preview {
    TopNavBarView()
}


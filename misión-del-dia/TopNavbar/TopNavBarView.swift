//
//  TopNavBarView.swift
//  misión-del-dia
//
//  Created by William Risal on 20/11/2023.
//

import SwiftUI

struct TopNavBarView: View {
    var body: some View {
        HStack{
            ButtonGainComponent(TextButton: "5000")
            Spacer()
            
            HStack{
                Button(action: {
                }, label: {
                    Image(systemName: "bell")
                        .resizable()
                        .frame(width:25, height: 25)
                })
                .foregroundColor(.white)
                    .opacity(0.8)
                Button(action: {
                    
                }, label: {
                    Image(systemName: "ellipsis.circle")
                        .resizable()
                        .frame(width:25, height: 25)
                })
                .foregroundColor(.white)
                    .opacity(0.8)
            }

        }
        .padding()
    }
}

#Preview {
    TopNavBarView()
}

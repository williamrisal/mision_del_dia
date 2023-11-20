//
//  BellView.swift
//  misión-del-dia
//
//  Created by William Risal on 20/11/2023.
//

import SwiftUI

struct BellView: View {
    var body: some View {
        ZStack{
            Text("Il n'y rien ici pour le moment. 😬")
                .padding()
                .foregroundColor(.blue)
                .bold()

        }.foregroundColor(.black)
    }
}

#Preview {
    BellView()
}

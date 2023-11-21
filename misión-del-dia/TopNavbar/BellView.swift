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
            Text("No hay nada aquí por el momento. 😬")
                .padding()
                .foregroundColor(.blue)
                .bold()

        }.foregroundColor(.black)
    }
}

#Preview {
    BellView()
}

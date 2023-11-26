//
//  ClassementView.swift
//  misión-del-dia
//
//  Created by William Risal on 14/11/2023.
//

import SwiftUI

struct ClassementView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "pencil.and.ruler")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
                Text("Regles")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                Spacer()
            }
            .padding(.top, 20)
            HStack {
                Text("faire @blablabla")
                    .font(.title3)
                    .foregroundColor(.white.opacity(0.7))
                Spacer()
            }
            HStack {
            Text("mettre @bloubloublou")
                .font(.title3)
                .foregroundColor(.white.opacity(0.7))
                Spacer()
            }
        }
        .padding(.horizontal, 25)
        ClassementComponent(ButtonActivate: true)
            .padding(.top, 10)
     }
}


struct ClassementView_Previews: PreviewProvider {
    static var previews: some View {
        ClassementView()
    }
}

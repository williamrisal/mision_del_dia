//
//  ClassementView.swift
//  misión-del-dia
//
//  Created by William Risal on 14/11/2023.
//

import SwiftUI

struct ClassementView: View {
    var body: some View {
        
        ZStack {
            VStack{
                ClassementComponent(ButtonActivate: true)
                    .padding(.top, -30)
                
            }
        }
    }
}


struct ClassementView_Previews: PreviewProvider {
    static var previews: some View {
        ClassementView()
    }
}

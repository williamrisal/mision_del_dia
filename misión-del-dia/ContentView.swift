//
//  ContentView.swift
//  misión-del-dia
//
//  Created by William Risal on 12/11/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            BackgroundView()

            VStack {
                BottomNavbarView()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}

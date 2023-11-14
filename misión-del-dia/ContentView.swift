// ContentView.swift
import SwiftUI

struct ContentView: View {
    @State private var viewLoad = 1


    var body: some View {
        ZStack {
            BackgroundView()

            VStack {
                VStack {
                    switch viewLoad {
                    case 0:
                        Text("0")
                    case 1:
                        Text("1")
                    case 2:
                        Text("2")
                    default:
                        Text("1")
                    }
                }
                .frame(maxHeight: .infinity)
                VStack {
                    BottomNavbarView(viewLoad: $viewLoad)
                        .padding()
                }
                .frame(height: (10 / 100) * UIScreen.main.bounds.height)
            }
        }
    }
}


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
                        ClassementView()
                    case 2:
                        Text("2")
                    default:
                        Text("1")
                    }
                }
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 50)
            }
             .background(viewLoad == 0 ? .red : viewLoad == 1 ? .green : .blue)
             .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            BottomNavbarView(viewLoad: $viewLoad)
                .position(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height / 2.2)
                .frame(height: (10 / 100) * UIScreen.main.bounds.height)
        }
    }
}
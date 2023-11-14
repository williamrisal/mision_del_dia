// ContentView.swift
import SwiftUI
struct ContentView: View {
    @State private var viewLoad = 1

    var body: some View {
        ZStack {
            BackgroundView()

             VStack {
                Spacer()
                ScrollView {
                     switch viewLoad {
                     case 0:
                        Text("mettre la premire view")
                     case 1:
                        Text("mettre la deuxieme view")
                     case 2:
                        Text("mettre la 3 view")
                     default:
                        Text("mettre la 1 view")
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

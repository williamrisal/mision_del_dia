// ContentView.swift
import SwiftUI
struct ContentView: View {
    @State private var viewLoad = 1 // a changer par 1

    var body: some View {
        ZStack {
            viewLoad == 0 ? BackgroundView(value: 0) : viewLoad == 1 ? BackgroundView(value: 1) : BackgroundView(value: 2)

                VStack {
                    if viewLoad != 0 {
                        TopNavBarView()
                    }
                    switch viewLoad {
                    case 0:
                        RewardsView()
                    case 1:
                        VStack{
                                SquareView()
                                    .zIndex(1)
                            ClassementView()
                        }.padding(.vertical, 40)
                    case 2:
                        AccountProfilView()
                    default:
                        ClassementView()
                        
                    }
                }
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 50)
            BottomNavbarView(viewLoad: $viewLoad)
                .position(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height / 2.2)
                .frame(height: (10 / 100) * UIScreen.main.bounds.height)
        }
    }
}

import SwiftUI

struct BottomNavbarView: View {
    @Binding var viewLoad: Int
    @State private var selectedTab = 1

    var body: some View {
        TabView(selection: $selectedTab) {
                NavigationView {
                }
                .tabItem {
                    Image(systemName: "tablecells")
                }
                .tag(0)
                
                NavigationView { }
                    .tabItem {
                        Image(systemName: "tablecells")
                    }
                    .tag(1)
                
                NavigationView { }
                    .tabItem {
                        Image(systemName: "tablecells")
                    }
                    .tag(2)
                    .background(Color.yellow)
            }
        .onChange(of: selectedTab) { lastTab, newTab in
            if (viewLoad == lastTab) {
                viewLoad = newTab
            }
        }
    }
}

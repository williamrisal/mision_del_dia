import SwiftUI

struct BottomNavbarView: View {
    @State var loadIntertial = false
    var body: some View {
        TabView {
            NavigationView {

            }
            .tabItem {
                Image(systemName: "slider.vertical.3")
                Text(NSLocalizedString("Tire Equivalence", comment: ""))
            }
            NavigationView {

            }
            .tabItem {
                Image(systemName: "tablecells")
                Text(NSLocalizedString("Correspondence Table", comment: ""))
            }
            }

        
    }
}

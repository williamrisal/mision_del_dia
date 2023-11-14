import SwiftUI

struct BottomNavbarView: View {
    @Binding var viewLoad: Int
    @State private var selectedTab = 1

    var logo: [String] = ["gift.fill", "medal.fill", "person.crop.circle"]

    var body: some View {
        HStack(spacing: 0) {
            Spacer().frame(width: 20)
            ForEach(0..<3) { index in
                Button(action: {
                    viewLoad = index
                }) {
                    Image(systemName: logo[index])
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(2)
                }
                .foregroundColor(viewLoad == index ? (viewLoad == 0 ? .red : viewLoad == 1 ? .green : .blue) : .gray)
                if index < 2 {
                    Spacer()
                }
            }
            Spacer().frame(width: 20)
        }
        .frame(width: (75 / 100) * UIScreen.main.bounds.width)
        .frame(height: (5 / 100) * UIScreen.main.bounds.height)
        .padding()
        .background(Color.white.opacity(0.95))
        .cornerRadius(35)
        .shadow(radius: 7)
    }
}

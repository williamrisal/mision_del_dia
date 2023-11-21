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
                .foregroundColor(viewLoad == index ? (viewLoad == 0 ? .red : viewLoad == 1 ? .green : .blue) : .black.opacity(0.15))

                if index < 2 {
                    Spacer()
                }
            }
            Spacer().frame(width: 20)
        }
        .frame(width: (80 / 100) * UIScreen.main.bounds.width)
        .frame(height: (5 / 100) * UIScreen.main.bounds.height)
        .padding()
        .background(VisualEffectBlur(blurStyle: .systemChromeMaterial).opacity(0.93))
        .cornerRadius(35)
        .shadow(color: .gray.opacity(0.5), radius: 2)
    }
}

struct VisualEffectBlur: UIViewRepresentable {
    var blurStyle: UIBlurEffect.Style

    func makeUIView(context: Context) -> UIVisualEffectView {
        return UIVisualEffectView(effect: UIBlurEffect(style: blurStyle))
    }

    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: blurStyle)
    }
}

import SwiftUI

struct TextScrollAnimation: View {
    let longText = "This is a very long text that needs to be scrolled to view in its entirety."

    @State private var scrollOffset: CGFloat = 0
    @State private var scrollDirection: CGFloat = -1

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            Text(longText)
                .font(.system(size: 18))
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
                .offset(x: scrollOffset, y: 0)
                .animation(Animation.linear(duration: 10).repeatForever(autoreverses: false))
                .onAppear {
                    withAnimation {
                        scrollOffset = -UIScreen.main.bounds.size.width
                        scrollDirection = 1
                    }
                }
        }
    }
}

struct TextScrollAnimation_Previews: PreviewProvider {
    static var previews: some View {
        TextScrollAnimation()
    }
}

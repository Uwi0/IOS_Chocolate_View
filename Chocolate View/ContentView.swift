import SwiftUI

struct ContentView: View {
    
    private let textCount = 28
    private let text: String = "Chocolate "
    private let n = 300
    private let spacing = 20.0
    private let opacity = 0.7
    
    @State private var angle = -50.0
    private var chocolateTexts: String {
        return String(repeating: text, count: textCount)
    }
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [.blue, .red],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .opacity(0.7)
            VStack(spacing: spacing) {
                ForEach(0 ..< n, id: \.self) { _ in
                    Text(chocolateTexts)
                        .fixedSize(horizontal: true, vertical: false)
                        .font(.caption)
                }
            }
            .rotationEffect(Angle(degrees: angle))
            .opacity(opacity)
        }
        .onTapGesture {
            withAnimation(.linear(duration: 2)) {
                angle = angle * -1
            }
        }
    }
}

#Preview {
    ContentView()
}

import SwiftUI

struct ChocolateView: View {
    
    let text: String
    let wordPerLine: Int
    let rows: Int
    let spacing: CGFloat
    let angle: CGFloat
    let font: Font
    
    
    var repeatedText: String {
        return String(repeating: "\(text)", count: wordPerLine)
    }
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: spacing) {
                ForEach(0 ..< rows, id: \.self) { _ in
                    Text(repeatedText)
                        .fixedSize(horizontal: true, vertical: false)
                        .font(font)
                }
            }
            .rotationEffect(Angle(degrees: angle))
            .frame(width: geometry.size.width, height: geometry.size.height)
        }
    }
}

#Preview {
    ZStack {
        LinearGradient(
            colors: [.blue, .red],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .opacity(0.7)
        .ignoresSafeArea()
        
        ChocolateView(text: "Chocolate", wordPerLine: 30, rows: 300, spacing: 20, angle: -50, font: .caption)
    }
}

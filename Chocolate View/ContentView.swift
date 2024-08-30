import SwiftUI

struct ContentView: View {
    
    
    @State private var angle = 0.0
    @State private var opacity = 0.0
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [.blue, .red],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .opacity(0.7)
            .ignoresSafeArea()
            .mask {
                ChocolateView(
                    text: "Chocolate",
                    wordPerLine: 30,
                    rows: 300,
                    spacing: 20,
                    angle: angle,
                    font: .largeTitle
                )
            }
            
        }
        .onTapGesture {
            withAnimation(.linear(duration: 2)) {
                angle = 50.0
                opacity = 0.7
            }
        }
    }
}

#Preview {
    ContentView()
}

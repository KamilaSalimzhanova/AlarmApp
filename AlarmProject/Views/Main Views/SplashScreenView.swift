import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var opacity = 0.3
    @State private var fontSize = 12.0
    var body: some View {
        if isActive {
            MainView()
        } else {
            ZStack {
                FourCoolCircles(color1: AppColor.blue.color, color2: Color.clear)
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Hello There")
                        Text("let's add an alarm")
                    }
                    .multilineTextAlignment(.leading)
                    .padding()
                    .onAppear {
                        withAnimation(.easeIn(duration: 1.5)) {
                            opacity = 1.0
                            fontSize = 36.0
                        }
                    }
                    Spacer()
                    Text("Some image")
                }
            }
        }
    }
}

#Preview {
    SplashScreenView()
}

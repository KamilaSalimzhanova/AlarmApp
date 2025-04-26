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
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        Group {
                            CoolTextView(text: LocalizedStringKey("Hello There"), size: fontSize)
                            CoolTextView(text: LocalizedStringKey("let's add an alarm"), size: fontSize)
                        }
                        .multilineTextAlignment(.leading)
                    }
                    .padding()
                    .onAppear {
                        withAnimation(.easeIn(duration: 1.5)) {
                            opacity = 1.0
                            fontSize = 20.0
                        }
                    }
                    Spacer()
                    Image("WelcomeIllustration")
                        .resizable()
                        .scaledToFit()
                        .opacity(opacity)
                    Spacer()
                }
                FourCoolCircles(color1: AppColor.blue.color, color2: Color.clear)
            }
            .opacity(opacity)
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
                    withAnimation {
                        isActive = true
                    }
                }
            }
            .onTapGesture {
                withAnimation {
                    isActive = true
                }
            }
        }
    }
}

#Preview {
    SplashScreenView()
}

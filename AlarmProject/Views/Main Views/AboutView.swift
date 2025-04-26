import SwiftUI

struct AboutView: View {
    var body: some View {
        ZStack {
            MainGradient(endRadius: UIScreen.main.bounds.height/2)
                .ignoresSafeArea()
            VStack {
                VStack(alignment: .leading) {
                    Group {
                        CoolTextView(text: "About", size: 40)
                        CoolTextView(text: " Here you can manage your alarm, change time, and other things.", size: 30)
                        .font(.title)
                    }
                    .multilineTextAlignment(.leading)
                    .minimumScaleFactor(0.1)
                    .padding()
                }
               // Spacer()
                ScrollView(.horizontal, showsIndicators: false) {
                    Image("AppDesign")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(30)
                        .frame(height: UIScreen.main.bounds.height*0.5)
                        .padding()
                }
                Spacer()
                
                if let url = URL(string: "https://dribbble.com/antonleogky") {
                    Link(destination: url) {
                        ButtonView(text: "To the page of the designer")
                    }
                }
            }
        }
    }
}

#Preview {
    AboutView()
}

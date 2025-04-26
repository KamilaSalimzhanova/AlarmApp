import SwiftUI

struct EnableNotifications: View {
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                CoolTextView(text: LocalizedStringKey("Enable notifications, please."), size: 30)
                    .multilineTextAlignment(.center)
                Spacer()
                Button {
                    print() //TODO: - notification
                } label: {
                    ButtonView(text: "enable")
                }

            }
            FourCoolCircles(color1: AppColor.blue.color, color2: Color.clear)
        }
    }
}

#Preview {
    EnableNotifications()
}

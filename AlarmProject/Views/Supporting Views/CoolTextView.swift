import SwiftUI

struct CoolTextView: View {
    let fontName = "WorkSans-Italic-VariableFont_wght"
    let text: LocalizedStringKey
    let size: CGFloat
    var body: some View {
        Text(text)
            .font(Font.custom(fontName, size: size))
            .shadow(color: .black.opacity(0.2), radius: 3)
        
    }
}

#Preview {
    CoolTextView(text: "set alarm and \nwake up easily", size: 36)
}

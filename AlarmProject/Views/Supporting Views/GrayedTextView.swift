import SwiftUI

struct GrayedTextView: View {
    let text: LocalizedStringKey
    let font: Font = .headline
    
    var body: some View {
        Text(text)
            .foregroundStyle(.gray)
            .font(font)
    }
}

#Preview {
    GrayedTextView(text: "Hello There")
}

import SwiftUI

struct AlarmToggleView: View {
    @Binding var alarmEnable: Bool
    let width = 35.0
    let factor = 59.0/35.0
    let innerCircle = 59.0/25.0
    var sign: Double { alarmEnable ? 1.0 : -1.0 }
    var xShift: Double { sign*12.0 }
    var background: Double {
        let res = ( xShift + 12.0 ) / 24.0
        return 0.5 - (res * 0.5)
    }
    var textColor: Color { alarmEnable ? .lightGray : .black }
    var onText: LocalizedStringKey { alarmEnable ? "on" : "off"}
    
    var body: some View {
        let dragGesture = DragGesture()
            .onChanged({ i in
                withAnimation(.easeIn(duration: 2.0)) {
                    alarmEnable = i.translation.width > 0 
                }
            })
        let tapGesture = TapGesture().onEnded { i in
            withAnimation(.easeIn(duration: 2.0)) {
                alarmEnable.toggle()
            }
        }
        
        let combined = dragGesture.simultaneously(with: tapGesture)
        HStack {
            GrayedTextView(text: "Alarm on/off")
            Spacer()
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .fill(
                        Color(white: background)
                    )
                
                Text(onText)
                    .font(.subheadline)
                    .foregroundStyle(textColor)
                    .offset(x: -xShift)
                
                Circle()
                    .fill(Color.cardBackground)
                    .padding(7)
                    .offset(x: xShift)
            }
            .frame(width: width*factor, height: width, alignment: .leading)
            .gesture(combined)
        }
        .padding()
    }
}


#Preview {
    VStack {
        AlarmToggleView(alarmEnable: .constant(true))
        AlarmToggleView(alarmEnable: .constant(false))
    }
}

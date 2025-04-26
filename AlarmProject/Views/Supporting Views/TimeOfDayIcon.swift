import SwiftUI

struct TimeOfDayIcon: View {
    let date: Date
    
    var percent: CGFloat { date.toPercent() }
    var hour: Int { Int(percent*24) }
    var image: (name: String, color: Color) {
        switch hour {
        case 6..<8: return ("sun.horizon.fill", .orange)
        case 8..<17: return ("sun.max.fill", .yellow)
        case 17..<20: return ("sun.and.horizon.fill", .pink)
        case 20..<23: return ("moon.fill", .black)
        default: return ("moon.stars.fill", .black)
        }
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    TimeOfDayIcon(date: Date())
}

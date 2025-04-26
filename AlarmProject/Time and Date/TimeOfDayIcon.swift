import SwiftUI

struct TimeOfDayIcon: View {
    // MARK: - public properties
    let date: Date
    
    // MARK: - computed properties
    var percent: CGFloat { date.toPercent() }
    var hour: Int { Int(percent*24) }
    var image: (name: String, color: Color) {
        switch hour {
        case 6..<8: return ("sun.and.horizon.fill", .orange)
        case 8..<17: return ("sun.max.fill", .yellow)
        case 17..<20: return ("sun.and.horizon.fill", .pink)
        case 20..<23: return ("moon.fill", .black)
        default: return ("moon.stars.fill", .black)
        }
    }
    
    var body: some View {
        Image(systemName: image.name)
            .foregroundStyle(image.color)
            .imageScale(.medium)
    }
}

#Preview {
    List(0..<24) { item in
        HStack {
            let theDate = Date().addHourToDate(numOfHours: item, numOfMinutes: 0)
            Text(theDate.getTimeFromDate()).font(.headline)
            Spacer()
            TimeOfDayIcon(date: theDate)
        }
        .padding()
    }.listStyle(.inset)
}

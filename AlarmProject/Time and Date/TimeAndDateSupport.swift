import Foundation

extension Date {
    
    // Function to convert the time of the day to a percentage of the day
    func toPercent() -> CGFloat {
        let components = self.gateTimeComponents()
        let hoursInDay: CGFloat = CGFloat(components.hour) / 24
        let minutesInDay: CGFloat = CGFloat(components.minute) / (60 * 24)
        return hoursInDay + minutesInDay
    }
    
    // Function to get the components (hour, minute, day, month, year) from a date
    func gateTimeComponents() -> (hour: Int, minute: Int, day: Int, month: Int, year: Int) {
        let components = Calendar.current.dateComponents([.hour, .minute, .day, .month, .year], from: self)
        return (hour: components.hour ?? 0, minute: components.minute ?? 0, day: components.day ?? 0, month: components.month ?? 0, year: components.year ?? 0)
    }
    
}

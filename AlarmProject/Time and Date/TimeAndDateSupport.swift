import Foundation

extension Date {
    
    // MARK: - public functions
    func toPercent() -> CGFloat {
        let components = self.gateTimeComponents()
        let hoursInDay: CGFloat = CGFloat(components.hour) / 24
        let minutesInDay: CGFloat = CGFloat(components.minute) / (60 * 24)
        return hoursInDay + minutesInDay
    }
    
    func getTimeFromDate() -> String {
        let components = self.gateTimeComponents()
        let (hour, minute) = (components.hour, components.minute)
        return String(format: "%02d:%02d", hour, minute)
    }
    
    func addHourToDate(numOfHours: Int, numOfMinutes: Int) -> Date {
        self.addingTimeInterval(TimeInterval(numOfMinutes*60+numOfHours*3600))
    }
    
    func subtract(rhs: Date) -> TimeInterval {
        self.timeIntervalSince(rhs)
    }
    
    func formatDate() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-MM-yyyy (HH:mm)"
        return formatter.string(from: self)
    }
    
    func dateToTimeModel() -> TimeModel {
        let components = self.gateTimeComponents()
        return TimeModel(hours: components.hour, minutes: components.minute)
    }
    
    // MARK: - private functions
    private func gateTimeComponents() -> (hour: Int, minute: Int, day: Int, month: Int, year: Int) {
        let components = Calendar.current.dateComponents([.hour, .minute, .day, .month, .year], from: self)
        return (hour: components.hour ?? 0, minute: components.minute ?? 0, day: components.day ?? 0, month: components.month ?? 0, year: components.year ?? 0)
    }
}

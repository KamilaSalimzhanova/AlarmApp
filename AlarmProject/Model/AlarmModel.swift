import Foundation
import SwiftUI

struct AlarmModel: Identifiable, Equatable {
    let id: String = UUID().uuidString
    
    let title: String
    let body: String
    let repeats: Bool
    
    var sound: Sounds
    var alarmEnabled: Bool
    
    var start: Date
    var end: Date
    
    var activity: String
    var colorIndex: Int
    
    var activityColor: Color { AppColor.mainColors[colorIndex] }
    var timeInterval: TimeInterval { end.subtract(rhs: start) }
    var startTimeModel: TimeModel { start.dateToTimeModel() }
    var endTimeModel: TimeModel { end.dateToTimeModel() }
    
    static func defaultAlarm() -> AlarmModel {
        AlarmModel(title: "Activity completed.",
                   body: "Have a great day!",
                   repeats: false,
                   sound: .lagrima,
                   alarmEnabled: false,
                   start: Date(),
                   end: Date(),
                   activity: activities[0],
                   colorIndex: 0)
    }
}

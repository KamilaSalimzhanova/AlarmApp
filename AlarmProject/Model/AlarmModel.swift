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
    
    static func dummyAlarm() -> [AlarmModel] {
        [
            AlarmModel(title: "Activity completed.",
                       body: "Have a great day!",
                       repeats: false,
                       sound: .lagrima,
                       alarmEnabled: true,
                       start: Date(),
                       end: Date().addHourToDate(numOfHours: 3, numOfMinutes: 15),
                       activity: "moon.zzz.fill",
                       colorIndex: 0),
            AlarmModel(title: "Yo Yo.",
                       body: "Peace!",
                       repeats: false,
                       sound: .lagrima,
                       alarmEnabled: true,
                       start: Date(),
                       end: Date().addHourToDate(numOfHours: 20, numOfMinutes: 30),
                       activity: "sun.max.fill",
                       colorIndex: 1),
            AlarmModel(title: "Another title.",
                       body: "Peace x2",
                       repeats: false,
                       sound: .lagrima,
                       alarmEnabled: false,
                       start: Date(),
                       end: Date().addHourToDate(numOfHours: 7, numOfMinutes: 0),
                       activity: "figure.skiing.downhill",
                       colorIndex: 2)
        ].sorted(by: {$0.endTimeModel < $1.endTimeModel})
    }
}

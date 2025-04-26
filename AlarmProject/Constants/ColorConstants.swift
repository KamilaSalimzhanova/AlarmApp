import Foundation
import SwiftUI

enum AppColor: String {
    case black = "Black"
    case blue = "Blue"
    case cardBackgroundColor = "CardBackgroundColor"
    case darkYellow = "DarkYellow"
    case lightGray = "LightGray"
    case lightYellow = "LightYellow"
    case nickel = "Nickel"
    case pink = "Pink"
    case purple = "Purple"
    case yellow = "Yellow"
    
    var color: Color { Color(self.rawValue) }
    var gradColorList: [Color] { [AppColor.yellow.color, AppColor.pink.color, AppColor.purple.color, AppColor.blue.color] }
    var mainColors: [Color] { [AppColor.pink.color,  AppColor.purple.color, AppColor.blue.color, AppColor.yellow.color, AppColor.lightGray.color, AppColor.black.color] }
}

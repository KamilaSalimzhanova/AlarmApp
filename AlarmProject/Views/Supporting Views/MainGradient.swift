//
//  MainGradient.swift
//  AlarmProject
//
//  Created by kamila on 26.04.2025.
//

import SwiftUI

struct MainGradient: View {
    var startRadius: CGFloat = 0
    var endRadius: CGFloat
    var scaleX: CGFloat = 2.0
    var optLinearGradient = 0.5
    var optRadGradient = 1.0
    var yellowColor = AppColor.yellow.color
    var body: some View {
        ZStack {
            LinearGradient(colors: [AppColor.blue.color, AppColor.purple.color, AppColor.pink.color], startPoint: .top, endPoint: .bottom)
                .opacity(optLinearGradient)
            
            RadialGradient(colors: [yellowColor, .clear], center: .bottom, startRadius: startRadius, endRadius: endRadius)
                .opacity(optRadGradient)
                .scaleEffect(x: scaleX)
        }
    }
}

#Preview {
    MainGradient(endRadius: 75)
        .frame(width: UIScreen.main.bounds.width, height: 100)
}

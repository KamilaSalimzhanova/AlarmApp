//
//  ButtonView.swift
//  AlarmProject
//
//  Created by kamila on 26.04.2025.
//

import SwiftUI

struct ButtonView: View {
    let text: LocalizedStringKey
    var body: some View {
        Text(text)
            .foregroundStyle(AppColor.black.color)
            .fontWeight(.semibold)
            .padding()
            .frame(maxWidth: .infinity)
            .background(
                MainGradient(endRadius: 40, scaleX: 3)
            )
            .cornerRadius(30)
            .padding()
    }
}

#Preview {
    ButtonView(text: "Add alarm")
}

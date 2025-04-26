//
//  YouDidItView.swift
//  AlarmProject
//
//  Created by kamila on 26.04.2025.
//

import SwiftUI

struct YouDidItView: View {
    var body: some View {
        ZStack {
            MainGradient(endRadius: 120, scaleX: 1.5, yellowColor: .darkYellow).ignoresSafeArea()
                .cornerRadius(20)
                .frame(height: UIScreen.main.bounds.height/4)
                .overlay {
                    HStack {
                        Text("You did it! Here you can manage your alarm, change time, and other things.")
                            .padding(.horizontal)
                            .font(.headline)
                            .frame(width: UIScreen.main.bounds.width/1.8)
                        Spacer()
                        Image("YouDidIt")
                            .resizable()
                            .scaledToFit()
                            .opacity(0.9)
                            .cornerRadius(30)
                            .padding(.trailing)
                    }
                }
                .padding()
        }
    }
}

#Preview {
    YouDidItView()
}

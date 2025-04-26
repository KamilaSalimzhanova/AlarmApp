import SwiftUI

struct WakeUpView: View {
    @Binding var alarmModel: AlarmModel

    let currentAlarmIndex: Int?
    var body: some View {
        ZStack {
            VStack {
                CancelSaveAlarm(currentAlarmIndex: currentAlarmIndex, alarmModel: $alarmModel)
                    .padding(.horizontal)
                    .tint(.red)
                AlarmToggleView(alarmEnable: $alarmModel.alarmEnabled)
                Divider()
                HStack {
                    Grid {
                        GridRow {
                            TimeOfDayIcon(date: alarmModel.start).font(.largeTitle)
                            VStack(alignment: .leading, spacing: 0) {
                                GrayedTextView(text: "start")
                                Text("Time picker")
                            }
                        }
                        GridRow {
                            HStack {
                                Divider()
                                    .frame(height: 30)
                                    .padding(2)
                            }
                        }
                        GridRow {
                            Image(systemName: alarmModel.activity)
                                .foregroundColor(alarmModel.activityColor)
                                .font(.headline)
                            Text("Select activity view")
                        }
                        .padding(.vertical)
                        GridRow {
                            HStack {
                                Divider()
                                    .frame(height: 30)
                                    .padding(2)
                            }
                        }
                        GridRow {
                            TimeOfDayIcon(date: alarmModel.start).font(.largeTitle)
                            VStack(alignment: .leading, spacing: 0) {
                                Text("Time picker")
                                GrayedTextView(text: "end")
                            }
                        }
                        GridRow {
                            Text("")
                            HStack {
                                Text("Sound:")
                                    .fontWeight(.semibold)
                                Text(alarmModel.sound.rawValue)
                                    .font(.headline)
                                    .fontWeight(.thin)
                            }
                            .padding(7)
                            .overlay {
                                Capsule().stroke()
                            }
                            .contextMenu {
                                ForEach(Sounds.allCases, id: \.self) { sound in
                                    Button(action: { alarmModel.sound = sound }, label: {
                                        Text(sound.rawValue)
                                    })
                                }.padding(.vertical)
                            }
                            
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding()
            }
            .padding()
            .background(AppColor.cardBackgroundColor.color.opacity(0.8))
            .cornerRadius(30)
            .padding()
        }
    }
}

#Preview {
    WakeUpView(alarmModel: .constant(AlarmModel.defaultAlarm()), currentAlarmIndex: nil)
}

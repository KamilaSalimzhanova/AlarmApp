import SwiftUI

struct CancelSaveAlarm: View {
    let currentAlarmIndex: Int?
    @Binding var alarmModel: AlarmModel
    var body: some View {
        HStack {
            Button {
                print("cancel to do")
            } label: {
                Text("Cancel")
            }
            
            Spacer()
            
            Button {
                print("save to do")
                if let currentAlarmIndex {
                    print("\(currentAlarmIndex)")
                }
            } label: {
                Text("Save")
            }

        }
    }
}

#Preview {
    CancelSaveAlarm(currentAlarmIndex: nil, alarmModel: .constant(.defaultAlarm()))
}

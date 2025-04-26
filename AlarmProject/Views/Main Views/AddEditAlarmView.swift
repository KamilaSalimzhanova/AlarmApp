import SwiftUI

struct AddEditAlarmView: View {
    @State private var showYouDidItView: Bool = true
    @Binding var alarmModel: AlarmModel
    
    let currentAlarmIndex: Int?
    var body: some View {
        ZStack {
            AppColor.cardBackgroundColor.color.ignoresSafeArea()
            VStack {
                if showYouDidItView {
                    YouDidItView()
                }
                WakeUpView(alarmModel: $alarmModel, currentAlarmIndex: currentAlarmIndex)
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                withAnimation {
                    showYouDidItView = false
                }
            }
        }
    }
}

#Preview {
    AddEditAlarmView(alarmModel: .constant(.defaultAlarm()), currentAlarmIndex: nil)
}

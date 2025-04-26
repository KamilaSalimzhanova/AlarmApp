import SwiftUI

struct FourCoolCircles: View {
    @State private var xOffsets: [CGFloat] = Array(repeating: 0, count: 4)
    @State private var yOffsets: [CGFloat] = Array(repeating: 0, count: 4)
    @State private var timer = Timer.publish(every: 1, on: .main, in: .common)
    
    var color1: Color = AppColor.darkYellow.color
    var color2: Color = AppColor.lightYellow.color
    
    private let circlesData: [(baseX: CGFloat, baseY: CGFloat, radius: CGFloat)] = [
        (UIScreen.main.bounds.width/4, -UIScreen.main.bounds.height/4, UIScreen.main.bounds.width/10),
        (-UIScreen.main.bounds.width/4, -UIScreen.main.bounds.height/20, UIScreen.main.bounds.width/7),
        ((1/3) * UIScreen.main.bounds.width, UIScreen.main.bounds.height/20, UIScreen.main.bounds.width/6),
        (-UIScreen.main.bounds.width/3, UIScreen.main.bounds.height/4, UIScreen.main.bounds.width/5)
    ]
    
    var body: some View {
        ZStack {
            ForEach(0..<4, id: \.self) { index in
                CoolCirclesView(radius: circlesData[index].radius, color1: color1, color2: color2.opacity(0.3))
                    .offset(
                        x: circlesData[index].baseX + xOffsets[index],
                        y: circlesData[index].baseY + yOffsets[index]
                    )
            }
        }
    }
}

struct CoolCirclesView: View {
    let radius: CGFloat
    var color1: Color = AppColor.yellow.color
    var color2: Color = Color.clear

    var body: some View {
        Circle()
            .fill(
                LinearGradient(colors: [color1, color2], startPoint: .top, endPoint: .bottom)
            )
            .frame(width: radius, height: radius)
        
    }
}

#Preview {
    FourCoolCircles()
}

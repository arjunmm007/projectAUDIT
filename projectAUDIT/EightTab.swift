import SwiftUI

struct EighthTab: View {
    @State private var time: Double = 0 // Added state for animation time
    
    var body: some View {
        let timer = Timer.publish(every: 0.03, on: .main, in: .common).autoconnect() // Adjust frequency here
        VStack(spacing: 20) {
            GeometryReader { geo in
                let rectangleWidth: CGFloat = 325 // Width of the rectangle
                let spaceOnRight = geo.size.width - rectangleWidth
                let spaceOnLeft = spaceOnRight / 2 // Center the rectangle
                
                // Gray rectangle
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.gray.opacity(0.5)) // Gray color
                    .frame(width: 332, height: 350)
                    .offset(x: spaceOnLeft) // Offset the gray rectangle to the center
                
                // Same rectangle with A#
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(red: 0.5843, green: 0.7216, blue: 0.6078, opacity: 1)) // olive green color
                    .frame(width: 300, height: 275)
                    .overlay(
                        Text("A#")
                            .font(.system(size: 170, weight: .bold))
                            .foregroundColor(.black)
                    )
                    .padding()
                    .offset(x: spaceOnLeft) // Offset the green rectangle to the center
                
                SlinkyLines(time: time)
                    .stroke(Color.black, lineWidth: 4) // Maintained line thickness
                    .frame(height: geo.size.height - 20) // Adjusted frame height
            }
        }
        .onReceive(timer) { _ in
            // Update time for animation
            self.time += 0.1 // Adjust speed here
        }
    }
}

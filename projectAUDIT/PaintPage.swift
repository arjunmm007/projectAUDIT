import SwiftUI

struct PaintPage: View {
    @State private var time: Double = 0 // Added state for animation time
    
    var body: some View {
        let timer = Timer.publish(every: 0.03, on: .main, in: .common).autoconnect() // Adjust frequency here
        
        return VStack(spacing: 135) { // Increased spacing between rectangle and lines
            GeometryReader { geo in
                let rectangleWidth: CGFloat = 325 // Width of the rectangle
                let spaceOnRight = geo.size.width - rectangleWidth
                let spaceOnLeft = spaceOnRight / 3.7 // Adjust the value to move the rectangle more to the right
                
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.gray.opacity(0.5)) // Use fixed color
                    .frame(width: rectangleWidth, height: 300)
                    .overlay(
                        Text("A#")
                            .foregroundColor(.black)
                            .font(.system(size: 170,  weight: .bold))
                    )
                    .padding()
                    .offset(x: spaceOnLeft) // Offset the rectangle to the right
                    .padding(.bottom, 20) // Adjusted bottom padding to bring down the rectangle
                
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

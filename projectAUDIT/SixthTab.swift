import SwiftUI

struct SixthTab: View {
    @State private var circlePosition1 = CGPoint(x: 100, y: 100) // Initial position of the first circle
    @State private var circlePosition2 = CGPoint(x: 200, y: 200) // Initial position of the second circle
    @State private var time: Double = 0 // Added state for animation time

    var body: some View {
        let timer = Timer.publish(every: 0.03, on: .main, in: .common).autoconnect() // Adjust frequency here
        
        VStack(spacing: 135) { // Increased spacing between rectangle and lines
            GeometryReader { geo in
                let rectangleWidth: CGFloat = 325 // Width of the rectangle
                let spaceOnRight = geo.size.width - rectangleWidth
                let spaceOnLeft = spaceOnRight / 3.7 // Adjust the value to move the rectangle more to the right
                
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(red: 0.4, green: 0.2588, blue: 0.1608)).edgesIgnoringSafeArea(.all) // Brown color
                    .frame(width: geo.size.width, height: geo.size.height)
                
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(red: 0.5843, green: 0.7216, blue: 0.6078, opacity: 1)) // olive green color
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
                
                // First draggable circle
                Circle()
                    .fill(Color.black)
                    .frame(width: 35, height: 35)
                    .position(circlePosition1)
                    .gesture(
                        DragGesture()
                            .onChanged { value in
                                self.circlePosition1 = value.location
                            }
                    )
                
                // Second draggable circle
                Circle()
                    .fill(Color.black)
                    .frame(width: 35, height: 35)
                    .position(circlePosition2)
                    .gesture(
                        DragGesture()
                            .onChanged { value in
                                self.circlePosition2 = value.location
                            }
                    )
                
            }
        }
        .onReceive(timer) { _ in
            // Update time for animation
            self.time += 0.1 // Adjust speed here
        }
    }
}

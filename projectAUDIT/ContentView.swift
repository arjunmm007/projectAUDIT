import SwiftUI

struct SlinkyLines: Shape {
    var time: Double
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let lineSpacing: CGFloat = (rect.width - 32) / 14 // Adjusted line spacing
        let lineHeight: CGFloat = 4 // Maintained line thickness
        let slinkyHeight: CGFloat = 40 // Maintained slinky height
        let verticalOffset: CGFloat = 200 // Maintained vertical offset
        let lineLength: CGFloat = 15 // Decreased line length
        
        // Sin wave lines
        for i in stride(from: lineSpacing / 2, through: rect.width - lineSpacing / 2, by: lineSpacing) {
            let y = rect.midY + sin((i + time) / 10) * slinkyHeight // Adjusted y coordinate
            let startY = rect.midY + verticalOffset // Apply vertical offset
            let endY = rect.midY + (lineLength * sin((i + time) / 10) * 6) + verticalOffset // Adjusted endY to increase line height
            
            path.move(to: CGPoint(x: i, y: startY))
            path.addLine(to: CGPoint(x: i, y: endY))
        }
        
        return path
    }
}

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

struct ContentView: View {
    @State private var selectedTab = 0 // Added state for selected tab
    @State private var time: Double = 0 // Added state for animation time
    
    var body: some View {
        let timer = Timer.publish(every: 0.03, on: .main, in: .common).autoconnect() // Adjust frequency here
        
        return TabView(selection: $selectedTab) {
            // First Tab (Placeholder)
            Text("Learn")
                .tabItem {
                    Image(systemName: "puzzlepiece")
                }
                .tag(0)
            
            // Second Tab (Placeholder)
            Text("Play")
                .tabItem {
                    Image(systemName: "circle")
                }
                .tag(1)
            
            // Third Tab (Placeholder)
            Text("Create")
                .tabItem {
                    Image(systemName: "pencil")
                }
                .tag(2)
            
            // Fourth Tab with the rectangle and slinky lines
            PaintPage()
                .tabItem {
                    Image(systemName: "speedometer")
                }
                .tag(3)
            
            // Fifth Tab (Placeholder)
            Text("Profile")
                .tabItem {
                    Image(systemName: "person.crop.circle")
                }
                .tag(4)
            
            // Sixth Tab (More)
            VStack(spacing: 135) { // Increased spacing between rectangle and lines
                GeometryReader { geo in
                    let rectangleWidth: CGFloat = 325 // Width of the rectangle
                    let spaceOnRight = geo.size.width - rectangleWidth
                    let spaceOnLeft = spaceOnRight / 3.7 // Adjust the value to move the rectangle more to the right
                    
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(red: 0.4, green: 0.2588, blue: 0.1608)) // Brown color
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
                }
            }
            .tabItem {
                Image(systemName: "ellipsis")
            }
            .tag(5)
            
            // Seventh Tab (Settings)
            VStack(spacing: 135) { // Increased spacing between rectangle and lines
                GeometryReader { geo in
                    let rectangleWidth: CGFloat = 325 // Width of the rectangle
                    let spaceOnRight = geo.size.width - rectangleWidth
                    let spaceOnLeft = spaceOnRight / 3.7 // Adjust the value to move the rectangle more to the right
                    
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(red: 0.6706, green: 0.4941, blue: 0.2980)) // Light brown color
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
                    
                    
                }
            }
            .tabItem {
                Image(systemName: "circle")
            }
            .tag(6)
            
            // Eighth Tab (Custom Shape)
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
                                .font(.system(size: 170,  weight: .bold))
                                .foregroundColor(.black)
                        )
                        .padding()
                        .offset(x: spaceOnLeft) // Offset the green rectangle to the center
                    
                    SlinkyLines(time: time)
                        .stroke(Color.black, lineWidth: 4) // Maintained line thickness
                        .frame(height: geo.size.height - 20) // Adjusted frame height
                }
            }
            .tabItem {
                Image(systemName: "star")
            }
            .tag(7)




        }
        .padding(.bottom, 10) // Adjust bottom padding for TabView
        .offset(y: 10) // Lowering the TabView slightly
        .onReceive(timer) { _ in
            // Update time for animation
            self.time += 0.1 // Adjust speed here
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

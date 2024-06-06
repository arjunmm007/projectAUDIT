import SwiftUI

struct SlinkyLines: Shape {
    var time: Double
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let lineSpacing: CGFloat = (rect.width - 32) / 14 // Adjusted line spacing
        let lineHeight: CGFloat = 5 // Increased line height
        let slinkyHeight: CGFloat = 40
        
        // Sin wave lines
        for i in stride(from: lineSpacing / 2, through: rect.width - lineSpacing / 2, by: lineSpacing) {
            let y = rect.midY + sin((i + time) / 10) * slinkyHeight // Adjusted y coordinate
            let startY = rect.midY + lineHeight / 2
            let endY = rect.midY - lineHeight / 2
            path.move(to: CGPoint(x: i, y: startY))
            path.addLine(to: CGPoint(x: i, y: y))
            path.move(to: CGPoint(x: i, y: y))
            path.addLine(to: CGPoint(x: i, y: rect.midY - y))
            path.move(to: CGPoint(x: i, y: rect.midY - y))
            path.addLine(to: CGPoint(x: i, y: endY))
        }
        
        return path
    }
}

struct ContentView: View {
    @State private var selectedTab = 0 // Added state for selected tab
    @State private var time: Double = 0
    
    let timer = Timer.publish(every: 0.03, on: .main, in: .common).autoconnect() // Adjust frequency here
    
    var body: some View {
        TabView(selection: $selectedTab) {
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
            VStack(spacing: 135) { // Increased spacing between rectangle and lines
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.gray.opacity(0.5))
                    .frame(width: 250, height: 250)
                    .overlay(
                        Text("A#")
                            .foregroundColor(.black)
                            .font(.system(size: 170))
                    )
                    .padding()
               
                SlinkyLines(time: time)
                    .stroke(Color.black, lineWidth: 3)
                    .frame(height: 250) // Adjusted frame height
            }
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
        }
        .padding(.bottom, 10) // Adjust bottom padding for TabView
        .offset(y: 10) // Lowering the TabView slightly
        .onReceive(timer) { _ in
            // Update time for animation
            self.time += 0.1 // Adjust speed here
        }
    }
}

#Preview {
    ContentView()
}

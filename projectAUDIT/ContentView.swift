import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0 // Added state for selected tab
    
    var body: some View {
        TabView(selection: $selectedTab) {
            // First Tab (Placeholder)
            Text("Learn")
                .tabItem {
                    Image(systemName: "1.circle")
                }
                .tag(0)
            
            // Second Tab (Placeholder)
            Text("Play")
                .tabItem {
                    Image(systemName: "2.circle")
                }
                .tag(1)
            
            // Third Tab (Placeholder)
            Text("Create")
                .tabItem {
                    Image(systemName: "3.circle")
                }
                .tag(2)
            
            // Fourth Tab with the rectangle and lines
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
               
                HStack {
                    ForEach(0..<15) { _ in
                        Divider()
                            .frame(height: 100) // Reduced height for spacing
                            .frame(width: 3)
                            .background(Color.black)
                            .padding(.horizontal, 7)
                    }
                }
            }
            .tabItem {
                Image(systemName: "4.circle")
            }
            .tag(3)
            
            // Fifth Tab (Placeholder)
            Text("Profile")
                .tabItem {
                    Image(systemName: "5.circle")
                }
                .tag(4)
        }
        .padding(.bottom, 10) // Adjust bottom padding for TabView
        .offset(y: 10) // Lowering the TabView slightly
    }
}

#Preview {
    ContentView()
}

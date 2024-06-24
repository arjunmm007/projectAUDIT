import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0 // Added state for selected tab
    @StateObject private var audioRecorder = AudioRecorder() // Initialize the AudioRecorder

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
            
            // Third Tab with waveform view
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
            
            // Sixth Tab with draggable circles
            SixthTab()
                .tabItem {
                    Image(systemName: "ellipsis")
                }
                .tag(5)
            
            // Seventh Tab with rectangle and slinky lines
            SeventhTab()
                .tabItem {
                    Image(systemName: "circle")
                }
                .tag(6)
            
            // Eighth Tab with custom shape
            EighthTab()
                .tabItem {
                    Image(systemName: "star")
                }
                .tag(7)
        }
        .onAppear {
            audioRecorder.startAudioEngine()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

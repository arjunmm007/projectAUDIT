import SwiftUI
import PythonKit

struct PaintPage: View {
    @StateObject private var audioRecorder = AudioRecorder() // Initialize the AudioRecorder
    @State private var note: String = "" // Default note
    @State private var frequency: Int = 200
    @State private var time: Double = 0 // Added state for animation time

    
    var body: some View {
        let timer = Timer.publish(every: 0.03, on: .main, in: .common).autoconnect() // Adjust frequency here
        
        VStack(spacing: 135) { // Increased spacing between rectangle and lines
            GeometryReader { geo in
                let rectangleWidth: CGFloat = 325 // Width of the rectangle
                let spaceOnRight = geo.size.width - rectangleWidth
                let spaceOnLeft = spaceOnRight / 3.7 // Adjust the value to move the rectangle more to the right
                
                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white) // Changed color to white
                                    .frame(width: geo.size.width, height: geo.size.height)
                
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(white: 0.79)) // Changed color to grey
                                    .frame(width: rectangleWidth, height: 300)
                                    .overlay(
                                        Text("A#")
                                            .foregroundColor(.black)
                                            .font(.system(size: 170, weight: .bold))
                                    )
                                    .padding()
                                    .offset(x: spaceOnLeft) // Offset the rectangle to the right
                                    .offset(y: 30) // Added y-offset for positioning
                                    .padding(.bottom, 20) // Adjusted bottom padding to bring down the rectangle
                
                // Add the WaveformView here, at the same position as in SeventhTab
                WaveformView(audioRecorder: audioRecorder)
                    .frame(height: 200) // Adjusted height to match the SeventhTab
                    .padding()
                    .offset(x: 0, y: 0)
                    .offset(y: 400)// Match the offset of the rectangle and place it in the correct spot
                
            }
        }
        .onReceive(timer) { _ in
            // Update time for animation
            self.time += 0.1 // Adjust speed here
        }
        .onAppear {
            audioRecorder.startAudioEngine() // Start audio engine when view appears
        }
    }
    func getNote() -> String {
        let sys = Python.import("sys")
        sys.path.append("/Users/arjunmehta/Desktop/projectAudit") // Update with the correct path
        let example = Python.import("audio")
        let response = example.midiToNote(200) // Adjust the argument as needed
        let note = response[0]
        return String(note)!
    }

}


struct PaintPage_Previews: PreviewProvider {
    static var previews: some View {
        PaintPage()
    }
}

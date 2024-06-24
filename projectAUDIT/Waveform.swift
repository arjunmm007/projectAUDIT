import SwiftUI

struct WaveformView: View {
    @ObservedObject var audioRecorder: AudioRecorder
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width / CGFloat(audioRecorder.levels.count)
            let maxHeight = geometry.size.height * 0.8 // Adjust maximum height for better visualization
            
            HStack(spacing: 2) {
                ForEach(audioRecorder.levels, id: \.self) { level in
                    let normalizedLevel = CGFloat(level * 6) // Increase sensitivity factor as needed
                    let height = min(maxHeight, max(2, normalizedLevel * geometry.size.height))
                    
                    Rectangle()
                        .fill(Color.black)
                        .cornerRadius(5)
                        .frame(width: width, height: height)
                        .animation(.easeInOut) // Smooth animation
                }
            }
        }
    }
}

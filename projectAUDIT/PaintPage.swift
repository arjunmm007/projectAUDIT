import SwiftUI

struct PaintPage: View {
    @StateObject private var audioRecorder = AudioRecorder() // Initialize the AudioRecorder
    
    var body: some View {
        ZStack {
            ZStack {
                // Background rectangle (light grey)
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Color(red: 0.85, green: 0.85, blue: 0.85))
                    .frame(width: 340, height: 430)
                    .cornerRadius(10)
                    .offset(x: 0, y: -130) // Adjusted offset to move higher on the screen
                
                // Olive green rectangle with "A#"
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Color(red: 0.46, green: 0.64, blue: 0.50))
                    .frame(width: 300, height: 300)
                    .cornerRadius(10)
                    .offset(x: 0, y: -173.89) // Adjusted offset to move higher on the screen
                
                // Text "A#"
                Text("A#")
                    .font(.system(size: 170, weight: .bold))
                    .foregroundColor(Color(red: 0.12, green: 0.12, blue: 0.12))
                    .offset(x: 0, y: -171) // Adjusted offset to move higher on the screen
            }
            .frame(width: 360, height: 462)
            .offset(x: 0, y: 0)
            
            // Bold "Winkboy" Text
            Text("Winkboy")
                .font(.system(size: 50, weight: .bold)) // Changed weight to .black for a bolder look
                .foregroundColor(Color(red: 0.70, green: 0.70, blue: 0.70))
                .offset(x: 0, y: 30.50) // Adjusted offset to move higher on the screen
            
            // Voice Memo section (WaveformView)
            VStack {
                WaveformView(audioRecorder: audioRecorder)
                    .frame(height: 200)
                    .padding()
                    .offset(y: 300) // Adjust vertical position as needed
            }
        }
        .frame(width: 430, height: 932)
        .onAppear {
            audioRecorder.startAudioEngine() // Start audio engine when view appears
        }
    }
}

struct PaintPage_Previews: PreviewProvider {
    static var previews: some View {
        PaintPage()
    }
}


import AVFoundation
import SwiftUI

class AudioRecorder: ObservableObject {
    private var audioEngine: AVAudioEngine!
    private var inputNode: AVAudioInputNode!
    private var bus: Int = 0
    
    @Published var levels: [Float] = Array(repeating: 0.0, count: 50)
    
    init() {
        setupAudioSession()
        startAudioEngine() // Ensure the engine starts when the recorder is initialized
    }
    
    private func setupAudioSession() {
        let audioSession = AVAudioSession.sharedInstance()
        do {
            try audioSession.setCategory(.playAndRecord, mode: .default, options: [.defaultToSpeaker])
            try audioSession.setActive(true)
        } catch {
            print("Failed to set up audio session: \(error)")
        }
    }
    
    func startAudioEngine() { // Changed from private to internal (default)
        audioEngine = AVAudioEngine()
        inputNode = audioEngine.inputNode
        
        let recordingFormat = inputNode.outputFormat(forBus: bus)
        
        inputNode.installTap(onBus: bus, bufferSize: 1024, format: recordingFormat) { buffer, time in
            self.processAudioBuffer(buffer: buffer)
        }
        
        audioEngine.prepare()
        
        do {
            try audioEngine.start()
        } catch {
            print("Failed to start audio engine: \(error)")
        }
    }
    
    private func processAudioBuffer(buffer: AVAudioPCMBuffer) {
        let channelData = buffer.floatChannelData?[0]
        let channelDataValueArray = stride(from: 0,
                                           to: Int(buffer.frameLength),
                                           by: buffer.stride).map { channelData![$0] }
        
        let rms = sqrt(channelDataValueArray.map { $0 * $0 }.reduce(0, +) / Float(buffer.frameLength))
        
        DispatchQueue.main.async {
            self.levels.removeFirst()
            self.levels.append(rms)
        }
    }
}

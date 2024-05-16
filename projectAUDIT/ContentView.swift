import SwiftUI

struct ContentView: View {
    var numberOfDividers = 15
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Text("A#")
                    .foregroundColor(.white)
                    .font(.system(size: 154))
                    .padding()
                
                Spacer()
                
                HStack {
                    ForEach(0..<numberOfDividers, id: \.self) { _ in
                        Divider()
                            .frame(height: 125)
                            .frame(width: 4)
                            .background(Color.white)
                            .padding(.horizontal, 10) // Add padding between dividers
                    }
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}


import SwiftUI

struct ContentView: View {
    var numberOfDividers = 15
    
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Text("A#")
                    .foregroundColor(.black)
                    .font(.system(size: 154))
                    .padding()
                
                Spacer()
                
                HStack {
                    ForEach(0..<numberOfDividers, id: \.self) { _ in
                        Divider()
                            .frame(height: 125)
                            .frame(width: 3)
                            .background(Color.black)
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


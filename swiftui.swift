import SwiftUI

struct ContentView: View {
    @State private var result = ""
    
    let chambers = [false, false, false, false, false, true]
    
    var body: some View {
        VStack {
            Text("Welcome to Russian Roulette!")
                .font(.largeTitle)
                .padding()
            Button(action: pullTrigger) {
                Text("Pull the Trigger")
                    .font(.title)
                    .padding()
            }
            Text(result)
                .font(.title)
                .padding()
        }
    }
    
    func pullTrigger() {
        var shuffledChambers = chambers.shuffled()
        if shuffledChambers[0] {
            result = "Bang! You're dead!"
        } else {
            result = "Click. You're safe... for now."
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

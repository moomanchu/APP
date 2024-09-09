import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            World(col: "the world is a hand")
        }
    }
}

struct World: View{
    let col: String
    
    var body: some View {
        Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(Color(red: 0, green: 0, blue: 255))
            Text(col)
    }
    
}

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            //World(col: "the world is a hand")
            //Color.Gradient(colors: [.indigo, .purple]).edgesIgnoringSafeArea(.all)
            Backgg()
            // VStack{
            //    World(col: "the world is a hand")
            //}
            Button(action: {
                print("Button tapped")
            }){
                ZStack{
                    Bottun()
                    Text("Generate Now!!!")
                        .foregroundColor(.white)
                        .font(.headline)
                }
            }
            .position(x: 200, y: 525)
        }
    }
}

struct Backgg: View{
    var body: some View{
        Rectangle()
            //.fill(Gradient(colors: [.indigo, .purple]))
            .fill(LinearGradient(
                gradient: Gradient(colors: [.indigo,.purple]),
                startPoint: .top,
                endPoint: .bottom
            ))
            .ignoresSafeArea()
    }
}

struct World: View{
    let col: String
    
    var body: some View {
        Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(Color(red: 0, green: 0, blue: 255))
            Text(col)
            .foregroundStyle(.white)
             // .background(Color.orange)
    }
}

struct Bottun: View{
    var body: some View{
        RoundedRectangle(cornerRadius: 50)
            .frame(width: 150, height: 150)
            .foregroundStyle(.orange)
    }
}

struct Previews_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}

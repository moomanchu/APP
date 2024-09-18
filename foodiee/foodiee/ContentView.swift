import SwiftUI

struct ContentView: View {
    @State private var isNavigating = false
    var body: some View {
        NavigationStack{
            ZStack {
                //World(col: "the world is a hand")
                //Color.Gradient(colors: [.indigo, .purple]).edgesIgnoringSafeArea(.all)
                Backgg()
                // VStack{
                //    World(col: "the world is a hand")
                //}
                Button(action: {
                    //print("Button tapped")
                    isNavigating = true
                }){
                    ZStack{
                        Bottun()
                        Text("Generate Now!!!")
                            .foregroundColor(.white)
                            .font(.headline)
                    }
                }
                .position(x: 200, y: 525)

                NavigationLink(value: isNavigating){
                    EmptyView()
                }
                inBox()
                    .position(x:195,y:200)
            }
            .navigationDestination(isPresented: $isNavigating){
                RecipieView()
            }
            //.navigationTitle("Home")
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

struct inBox: View{
    @State private var input: String = ""
    var body: some View{
        TextField(
            "Please input your ingredients :3",
            text: $input,
            axis: .vertical
        )
        .textFieldStyle(.roundedBorder)
    }
}

struct Bottun: View{
    var body: some View{
        RoundedRectangle(cornerRadius: 50)
            .frame(width: 150, height: 150)
            .foregroundStyle(.orange)
    }
}

struct RecipieView: View{
    var body: some View{
        VStack{
            Text("hello")
                .font(.largeTitle)
        }
        //.navigationTitle("RecipieView")
    }
}

struct Previews_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}

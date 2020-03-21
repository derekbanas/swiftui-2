import SwiftUI

struct ContentView: View {
    
    @State var things = [
        Thing(name: "Koala", description: "Favorite Animal", imageURL: "koala"),
        Thing(name: "Pizza", description: "Favorite Food", imageURL: "pizza"),
        Thing(name: "Running", description: "Favorite Exercise", imageURL: "running"),
    ]
    
    var body: some View {
        NavigationView{
            List{
                ForEach(things){ thing in
                    NavigationLink(destination: ThingDetail(thing: thing)){
                        ThingView(thing: thing)
                    }
                }
            }
        .navigationBarTitle("Favorite Thing")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ThingView: View {
    
    let thing: Thing
    
    var body: some View {
        HStack{
            Image(thing.imageURL)
                .resizable()
                .frame(width: 80, height: 80)
                .cornerRadius(16)
            VStack(alignment: .leading){
                Text(thing.name)
                Text(thing.description)
            }
            
        }
    }
}

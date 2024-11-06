import SwiftUI

struct ContentView: View {
    @State private var isDetailViewActive = false

    
    var body: some View {
        NavigationStack{
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
                
                Button(action: {
                    isDetailViewActive = true
                }) {
                    Text("Sign In")
                }.padding().buttonStyle(.borderedProminent)
                
                
                NavigationLink(
                    destination: LoginScreen(),
                    isActive: $isDetailViewActive
                ) {
                    EmptyView()
                }
    }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}

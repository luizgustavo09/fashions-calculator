import SwiftUI

struct LauchingView: View {
    var body: some View {
        NavigationView {
            ZStack {
                NavigationLink(destination: Intro()) {
                    Image("lauching")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarHidden(true)
    }
}

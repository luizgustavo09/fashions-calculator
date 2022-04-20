import SwiftUI

struct Lauching: View {
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
        .environmentObject(IntroViewModel())
    }
}

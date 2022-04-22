import SwiftUI

struct LauchingView: View {
    @State private var dragOffset = CGSize.zero
    @State var selection: Int? = nil

    var body: some View {
        NavigationView {
            ZStack {
                NavigationLink(destination: Intro()) {
                    Image("lauching")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .offset(dragOffset)
//                        .gesture(
//                            DragGesture()
//                                .onChanged { gesture in
//                                    dragOffset = gesture.translation
//                                }
//                                .onEnded { gesture in
//                                    dragOffset = .zero
//                                    selection = 1
//                                }
//                            )
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarHidden(true)
        .environmentObject(IntroViewModel())
//        NavigationLink(destination: Intro(), tag: 1, selection: $selection) {
//            EmptyView()
//        }
    }
}

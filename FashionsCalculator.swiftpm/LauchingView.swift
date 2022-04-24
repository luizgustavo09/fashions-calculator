import SwiftUI
import AVKit


struct LauchingView: View {
    @State private var dragOffset = CGSize.zero
    @State var selection: Int? = nil
    @State var audioPlayer: AVAudioPlayer!

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
            .onAppear {
                    if let sound = Bundle.main.url(forResource: "BGmusic", withExtension: "mp3") {
                        do {
                            try self.audioPlayer = AVAudioPlayer(contentsOf: sound)
                            self.audioPlayer?.numberOfLoops = 5
                            self.audioPlayer?.play()
                        } catch {
                            print("Couldn't play audio. Error: \(error)")
                        }
                    } else {
                        print("No audio file found")
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarHidden(true)
    }
}

import SwiftUI

struct BalloonView: View {
    let text: String
    let top: CGFloat
    let leading: CGFloat
    let bottom: CGFloat
    let trailling: CGFloat
    @Binding var index: Int
    let start: Bool
    @State var selection: Int? = nil
    @ViewBuilder
    var destination: some View {
        if start {
            GameStart()
        } else {
            Intro()
        }
    }
    var body: some View {
        VStack {
            Text(text)
                .padding()
                .font(.system(size: 20))
            HStack {
                Spacer()
                Button() {
                    index += 1
                    selection = 1
                    print(index)
                } label: {
                    Text("next >>")
                        .font(.system(size: 20))
                }
                .foregroundColor(.primaryPurple)
            } .padding()
        }
        .background(RoundedRectangle(cornerRadius: 30).foregroundColor(.white))
        .padding(EdgeInsets(top: top, leading: leading, bottom: bottom, trailing: trailling))
        NavigationLink(destination: destination, tag: 1, selection: $selection) {
            EmptyView()
        }
    }
    
}

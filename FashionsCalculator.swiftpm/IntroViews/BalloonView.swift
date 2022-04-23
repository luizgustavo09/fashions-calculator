import SwiftUI

struct BalloonView: View {
    let text: String
    let top: CGFloat
    let leading: CGFloat
    let bottom: CGFloat
    let trailling: CGFloat
    @Binding var index: Int
    
    var body: some View {
        VStack {
            Text(text)
                .padding(EdgeInsets(top: 40, leading: 40, bottom: 10, trailing: 40))               .font(Font.custom("ArimaMadurai-Black", size: 30))
            HStack {
                Spacer()
                Button() {
                    index += 1
                    print(index)
                } label: {
                    Text("next >>")
                        .font(Font.custom("ArimaMadurai-Black", size: 30))
                }
                .foregroundColor(.primaryPurple)
            }.padding(.trailing, 30)
            .padding(.bottom, 20)
        }
        .background(RoundedRectangle(cornerRadius: 30).foregroundColor(.white))
        .padding(EdgeInsets(top: top, leading: leading, bottom: bottom, trailing: trailling))
        
    }
    
}

import SwiftUI

struct BalloonView: View {
    let text: String
    let top: CGFloat
    let leading: CGFloat
    let bottom: CGFloat
    let trailling: CGFloat
    @Binding var index: Int
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            Text(text)
                .padding()
                .font(Font.custom("ArimaMadurai-Black", size: 30))
            HStack {
                Spacer()
                Button() {
                    index += 1
                } label: {

                    Text("next >>")
                        .font(Font.custom("ArimaMadurai-Black", size: 30))
                }
            } .padding()
        }.padding()
        .background(RoundedRectangle(cornerRadius: 30).foregroundColor(.white))
        .padding(EdgeInsets(top: top, leading: leading, bottom: bottom, trailing: trailling))
        
    }
    
}

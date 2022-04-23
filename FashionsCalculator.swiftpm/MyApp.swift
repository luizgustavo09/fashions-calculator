import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            LauchingView()
        }
    }
    
    init() {
        let arimaMadurai = Bundle.main.url(forResource: "ArimaMadurai-Black", withExtension: "ttf")! as CFURL
        CTFontManagerRegisterFontsForURL(arimaMadurai, CTFontManagerScope.process, nil)
    }
}

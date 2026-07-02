

import SwiftUI

@main
struct swiftui_avplayerApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self)
    var appDelegate
    
    var body: some Scene {
        WindowGroup {
            PlayView()
        }
    }
}



import SwiftUI
import AVKit

struct VideoPlayerView: UIViewControllerRepresentable {

    let player: AVPlayer

    func makeUIViewController(context: Context) -> AVPlayerViewController {

        let controller = AVPlayerViewController()

        controller.player = player

        // Enable PiP
        controller.allowsPictureInPicturePlayback = true

        // Automatically enter PiP when app goes background
        controller.canStartPictureInPictureAutomaticallyFromInline = true
        

        return controller
    }

    func updateUIViewController(
        _ uiViewController: AVPlayerViewController,
        context: Context
    ) {
    }
    
    
    func makeCoordinator() -> Coordinator {
        Coordinator()
    }
}




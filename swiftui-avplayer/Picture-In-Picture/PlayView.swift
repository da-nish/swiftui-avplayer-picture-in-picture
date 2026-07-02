
import SwiftUI
import AVFAudio
import AVFoundation
import AVKit


struct PlayView: View {
    
    init() {
        
        let supported =
            AVPictureInPictureController
                .isPictureInPictureSupported()

        print("PiP Supported:", supported)
    }
    
    @State private var player = AVPlayer(
        url: URL(string:"https://lorem.video/720p")!
    )

    var body: some View {

        VStack {
            ZStack {
                VideoPlayerView(player: player)
//                MovingWatermark(text: "userId")
            }
            .frame(height: 300)

            Button("Play") {
                player.play()
            }
        }
    }
}

#Preview {
    PlayView()
}

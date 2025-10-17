import SwiftUI
import AVKit

struct HLSPlayerView: View {
    // Replace with your LAN FastAPI IP + port
    let streamURL = URL(string: "http://192.168.1.5:8000/hls/song1.mp3/index.m3u8")!

    @State private var player: AVPlayer? = nil

    var body: some View {
        VStack {
            Text("HLS Audio Player")
                .font(.title)
                .padding()

            if let player = player {
                VideoPlayer(player: player)
                    .frame(height: 50) // Minimal height for audio
                    .onAppear {
                        player.play()
                        // Enable background playback (Info.plist required)
                        try? AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
                        try? AVAudioSession.sharedInstance().setActive(true)
                    }
            }

            Button(action: {
                player?.pause()
            }) {
                Text("Pause")
                    .padding()
            }

            Button(action: {
                player?.play()
            }) {
                Text("Play")
                    .padding()
            }
        }
    }
}



import Foundation
import AVFoundation

enum Music: String {
    case start = "Powerup! - Jeremy Blake"
    case game = "Slightlines - Jeremy Blake"
    case ending = "Stardrive - Jeremy Blake"
}

class AudioManager {
    
    public static var shared = AudioManager()
    private var tap: AVAudioPlayer?
    
    private var musicPlayer: AVAudioPlayer?
    private var generalVolume = 0.5

    
    public func playMusic(music: Music) {
        
        let resource = music.rawValue
        
        if let musicURL = Bundle.main.url(forResource: resource, withExtension: "mp3") {
            do { musicPlayer = try AVAudioPlayer(contentsOf: musicURL) } catch {}
            musicPlayer?.play()
            musicPlayer?.numberOfLoops = -1
        }
    }
    
    func playTapEffect() {
        DispatchQueue.global(qos: .userInitiated).async { [unowned self] in
            if let url = Bundle.main.url(forResource: "tap", withExtension: "wav") {
                do { tap = try AVAudioPlayer(contentsOf: url)} catch{}
                tap?.volume = 1
                tap?.play()
            }
        }
    }

    
    
    public func resumeMusic() {
        musicPlayer?.play()
    }
    
    public func pauseMusic() {
        musicPlayer?.pause()
    }
    
}

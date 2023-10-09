//
//  AudioPlayer.swift
//  Restart
//
//  Created by DB-MBP-017 on 08/10/23.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playAudio(sound: String, type: String){
    if let path = Bundle.main.path(forResource: sound, ofType: type){
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch{
            print("Could not play this audio file")
        }
    }
}

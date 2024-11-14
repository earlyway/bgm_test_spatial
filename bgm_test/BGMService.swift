//
//  BGMService.swift
//  bgm_test
//
//  Created by Tium Solutions on 11/14/24.
//

import Foundation
import AVFoundation

class BGMService {
    private var audioPlayer: AVAudioPlayer?
    
    func startBGM() {
        guard let url = Bundle.main.url(forResource: "spring", withExtension: "wav") else { // source 폴더의 spring.wav 파일
            print("BGM file not found")
            return
        }
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.numberOfLoops = -1 // Loop indefinitely
            audioPlayer?.play()
        } catch {
            print("Error playing BGM: \(error.localizedDescription)")
        }
    }
    func stopBGM() {
        audioPlayer?.stop()
    }
}


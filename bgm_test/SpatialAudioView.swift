//
//  SpatialAudioView.swift
//  bgm_test
//
//  Created by Tium Solutions on 11/15/24.
//

import Foundation
import SwiftUI
import RealityKit
import RealityKitContent
import AVFoundation

struct SpatialAudioView: View {
    let spatialAudioEntity = Entity()
    
    var body: some View {
        springSAudio
        }
    
    var springSAudio: some View {
        VStack {
            RealityView{ content in
                content.add(spatialAudioEntity)
                
                let audioSourceName : String = "spring.wav"
                let config = AudioFileResource.Configuration(shouldLoop : true)
                let audioSpringLoad = try? AudioFileResource.load(
                    named: audioSourceName,
                    configuration: config
                )
                
                spatialAudioEntity.spatialAudio?.distanceAttenuation = .rolloff(factor: 3)
                spatialAudioEntity.spatialAudio?.reverbLevel = 0.3
                                    //spatialAudio distanceAttenuation, gain, directlevel, reverblevel
                spatialAudioEntity.playAudio(audioSpringLoad!)
                
            }
            Button("spatial 공간 음악 정지"){
                spatialAudioEntity.stopAllAudio()
            }
            .frame(width: 1000, height: 300)
            .font(.system(size: 100, weight: .semibold))
            
            //.foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview(windowStyle: .volumetric) {
    SpatialAudioView()
}

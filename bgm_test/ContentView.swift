//
//  ContentView.swift
//  bgm_test
//
//  Created by Tium Solutions on 11/14/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {

    private let bgmService = BGMService()  //BGMService.swift view 를 참조

    var body: some View {
        VStack {
            Button("mono bgm play"){
                bgmService.startBGM()
            }
            .frame(width: 1800, height: 300)
            .font(.system(size: 150, weight: .semibold))
            Button("mono bgm stop"){
                bgmService.stopBGM()
            } //1
            .frame(width: 1800, height: 300)
            .font(.system(size: 150, weight: .semibold))
            
        }
    }
    
}

#Preview(windowStyle: .volumetric) {
    ContentView()
}

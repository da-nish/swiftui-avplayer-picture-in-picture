//
//  AppDelegate.swift
//  swiftui-avplayer
//
//  Created by PropertyShare on 02/07/26.
//



import UIKit
import AVFoundation

class AppDelegate: NSObject, UIApplicationDelegate {

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil
    ) -> Bool {

        do {
            try AVAudioSession.sharedInstance()
                .setCategory(.playback, mode: .moviePlayback)

            try AVAudioSession.sharedInstance()
                .setActive(true)
        } catch {
            print(error)
        }

        return true
    }
}

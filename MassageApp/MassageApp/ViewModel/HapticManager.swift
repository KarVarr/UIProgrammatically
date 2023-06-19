//
//  HapticManager.swift
//  MassageApp
//
//  Created by Karen Vardanian on 18.06.2023.
//

import CoreHaptics
import SwiftUI



class HapticManager {
    var engine: CHHapticEngine?
    var player: CHHapticPatternPlayer?
    
    init() {
        do {
            engine = try CHHapticEngine()
            try engine?.start()
        } catch {
            print("Haptic Engine failed to start: \(error)")
        }
    }
    
    func playHaptic(intensity: Float) {
        guard CHHapticEngine.capabilitiesForHardware().supportsHaptics else { return }
        
        let hapticIntensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: intensity)
        let hapticSharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: intensity)
        
        let hapticEvent = CHHapticEvent(eventType: .hapticContinuous, parameters: [hapticIntensity, hapticSharpness], relativeTime: 0, duration: .infinity)
        
        do {
            let pattern = try CHHapticPattern(events: [hapticEvent], parameters: [])
            player = try engine?.makePlayer(with: pattern)
            try player?.start(atTime: 0)
        } catch {
            print("Failed to play haptic: \(error)")
        }
    }
    
    func stopHaptic() {
        do {
          try  player?.stop(atTime: 0)
        } catch {
            print("Failed to stop haptic: \(error)")
        }
    }
}

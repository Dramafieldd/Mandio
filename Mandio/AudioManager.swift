//
//  AudioManager.swift
//  Mandio
//
//  Created by Alicia Laurence on 24/05/24.
//
//

import AVFoundation

class AudioManager {
    
    static let shared = AudioManager()
    
    var audioPlayer: AVAudioPlayer?
    var audioPlayer2: AVAudioPlayer?
    var audioPlayer3: AVAudioPlayer?
    var audioPlayer4: AVAudioPlayer?

    //TODO: Diperbaiki nama funcnya + var
    
    // Content View audio
    func loadAudio() {
        guard let url = Bundle.main.url(forResource: "song", withExtension: "mp3") else {
            print("Error loading song.mp3 audio file")
            return
        }
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.prepareToPlay()
            audioPlayer?.volume = 0.3
            audioPlayer?.numberOfLoops = -1
            audioPlayer?.play() // Ensure the audio is played
        } catch let error {
            print("Error creating AVAudioPlayer: \(error)")
        }
    }
    
    // Stop background audio
    func stoploadAudio() {
        audioPlayer?.stop()
    }

// start button audio
    func loadAudio2() {
        guard let url = Bundle.main.url(forResource: "s.efek1", withExtension: "mp3") else {
            print("Error loading s.efek1.mp3 audio file")
            return
        }
        
        do {
            audioPlayer2 = try AVAudioPlayer(contentsOf: url)
            audioPlayer2?.prepareToPlay()
            audioPlayer2?.volume = 1.0
            audioPlayer2?.play()
        } catch let error {
            print("Error creating AVAudioPlayer: \(error)")
        }
    }
    
    // Stop button start audio
    func stoploadAudio2() {
        audioPlayer2?.stop()
    }
    
    // Play new audio
    func loadAudio3(named: String, withExtension ext: String) {
            stoploadAudio()
            
            guard let url = Bundle.main.url(forResource: "song2", withExtension: "mp3") else {
                print("Error loading song2.mp3 audio file")
                return
            }
            
            do {
                audioPlayer3 = try AVAudioPlayer(contentsOf: url)
                audioPlayer3?.prepareToPlay()
                audioPlayer3?.volume = 0.3
                audioPlayer3?.numberOfLoops = -1
                audioPlayer3?.play()
            } catch let error {
                print("Error creating AVAudioPlayer: \(error)")
            }
        }
    
    
    func playloadAudio3(){
        audioPlayer3?.play()
    }
    
    func stoploadAudio3(){
        audioPlayer3?.stop()
    }
    
    // backbutton
    func loadAudio4(named: String, withExtension ext: String) {
            stoploadAudio()
            
            guard let url = Bundle.main.url(forResource: "Bubble", withExtension: "mov") else {
                print("Error loading song2.mp3 audio file")
                return
            }
            
            do {
                audioPlayer4 = try AVAudioPlayer(contentsOf: url)
                audioPlayer4?.prepareToPlay()
                audioPlayer4?.volume = 1.0
                audioPlayer4?.numberOfLoops = -1
                audioPlayer4?.play()
            } catch let error {
                print("Error creating AVAudioPlayer: \(error)")
            }
        }
    
    func stoploadAudio4(){
        audioPlayer4?.stop()
    }

}


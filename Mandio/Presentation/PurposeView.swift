//
//  SplashScreen.swift
//  Mandio
//
//  Created by Alicia Laurence on 21/05/24.
//

import SwiftUI

struct PurposeView: View {
    
    @State private var isNavigating = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("Splash Screen 1")
                    .resizable()
                    .frame(width: 1370, height: 1100)
                
                VStack {
                    Button(action: {
                        AudioManager.shared.loadAudio2()
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                            isNavigating = true
                        }
                    }) {
                        Text("Start")
                            .font(.system(size: 35, weight: .medium, design: .default))
                            .foregroundColor(.white)
                            .padding(.horizontal, 350)
                            .padding(.vertical, 15)
                            .background(Color.orange)
                            .cornerRadius(10)
                            .shadow(radius: 3)
                    }
                    .offset(x:0,y:380)
                }
                .navigationBarBackButtonHidden(true)
            }
            .navigationDestination(isPresented: $isNavigating) {
                SplashScreen2()
            }
            .padding()
        }
        .onAppear {
            AudioManager.shared.loadAudio3(named: "song2", withExtension: "mp3")
        }
    }
}

struct PurposeView_Previews: PreviewProvider {
    static var previews: some View {
        PurposeView()
    }
}


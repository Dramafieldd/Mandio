//
//  ContentView.swift
//  Mandio
//
//  Created by Alicia Laurence on 20/05/24.
//


import SwiftUI

struct ContentView: View {
    
    @State private var isNavigating = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("Landing Page")
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
                    .padding(.top, 670)
                }
                .navigationBarBackButtonHidden(true)
            }
            .navigationDestination(isPresented: $isNavigating) {
                ToKnow()
            }
            .padding()
        }
        .onAppear {
            AudioManager.shared.loadAudio()
        }
        .onDisappear {
            AudioManager.shared.stoploadAudio()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//
//  WritingAnimation.swift
//  Mandio
//
//  Created by Alicia Laurence on 22/05/24.
//

import SwiftUI

struct WritingAnimation: View {
    
    @State var Firstmove = false
    @State var Secondmove = false
    @State var Thirdmove = false
    @State var Fourthmove = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("Backgroundbuatnulis")
                    .resizable()
                    .frame(width: 1370, height: 1050)
                
                NavigationLink(destination:
                    MateriView()) {
                    Image("quit button")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .offset(x: 560, y: -395)
                }
                
                if Firstmove {
                    Image("Vector 114")
                        .resizable()
                        .frame(width: 80, height: 100)
                        .offset(x: -110, y: -125)
                }
                
                if Secondmove {
                    Image("Vector 116")
                        .resizable()
                        .frame(width: 210, height: 25)
                        .offset(x: 0, y: -120)
                }
                
                if Thirdmove {
                    Image("Vector 116")
                        .resizable()
                        .frame(width: 350, height: 30)
                        .offset(x: 0, y: 0)
                }
                
                if Fourthmove {
                    Image("Vector 117")
                        .resizable()
                        .frame(width: 30, height: 400)
                        .offset(x: 0, y: 0)
                }
                
            }
            .navigationBarBackButtonHidden(true)
            .onAppear {
                Timer.scheduledTimer(withTimeInterval: 2, repeats: false) { _ in
                    withAnimation {
                        self.Firstmove = true
                    }
                }
                
                Timer.scheduledTimer(withTimeInterval: 4, repeats: false) { _ in
                    withAnimation {
                        self.Secondmove = true
                    }
                }
                
                Timer.scheduledTimer(withTimeInterval: 6, repeats: false) { _ in
                    withAnimation {
                        self.Thirdmove = true
                    }
                }
                
                Timer.scheduledTimer(withTimeInterval: 8, repeats: false) { _ in
                    withAnimation {
                        self.Fourthmove = true
                    }
                }
                
                AudioManager.shared.playloadAudio3()
            }
        }
    }
}

#Preview {
    WritingAnimation()
}


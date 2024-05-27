//
//  ToKnow.swift
//  Mandio
//
//  Created by Alicia Laurence on 26/05/24.
//

import SwiftUI

struct ToKnow: View {
    
    @State private var isNavigating = false
    
    var body: some View {
        NavigationStack{
            ZStack{
                Image("Splash Screen 1")
                    .resizable()
                    .frame(width:1390, height:1050)
                
                
                VStack {
                    //Tombol Start
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
                .navigationDestination(isPresented: $isNavigating) {
                    Choosetime()
                }.navigationBarBackButtonHidden(true)
            }
            .onAppear(){AudioManager.shared.loadAudio3(named: "song2", withExtension: "mp3")}
        }
    }
}

struct ToKnow_Preview: PreviewProvider {
    static var previews: some View {
        ToKnow()
    }
}

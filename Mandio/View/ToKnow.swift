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
                Image("Tujuan")
                    .resizable()
                    .frame(width:1390, height:1050)
                
                Image("Anak-Anak")
                    .resizable()
                    .frame(width: 230,height:230)
                .offset(x:-450,y:-85)
                
                Image("Adult")
                    .resizable()
                    .frame(width:300,height:300)
                    .offset(x:0,y:-85)
                
                Image("Write")
                    .resizable()
                    .frame(width: 230,height: 280)
                    .offset(x:450,y:-100)
                
                VStack{
                    Text("Mandio’s purpose is to help..")
                        .font(.largeTitle)
                        .fontWeight(.medium)
                        .foregroundColor(Color.black)
                        .offset(x:0,y:-350)
                    
                    Text("Children")
                        .font(.title)
                        .fontWeight(.medium)
                        .foregroundColor(Color.black)
                        .offset(x:-450,y:80)
                    
                    Text("Adult")
                        .font(.title)
                        .fontWeight(.medium)
                        .foregroundColor(Color.black)
                        .offset(x:0,y:50)
                    
                    Text("Write")
                        .font(.title)
                        .fontWeight(.medium)
                        .foregroundColor(Color.black)
                        .offset(x:450,y:5)
                }
                
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
                    ChooseTime()
                }.navigationBarBackButtonHidden(true)
            }
            .onAppear(){AudioManager.shared.loadAudio3(named: "song2", withExtension: "mp3")}
        }
    }
}

#Preview {
    ToKnow()
}

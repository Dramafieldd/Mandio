//
//  SplashScreen2.swift
//  Mandio
//
//  Created by Alicia Laurence on 21/05/24.
//
//

import SwiftUI

struct Choosetime: View {
    
    @State private var isNavigating = false
    @Environment(\.dismiss) var dismiss
    @State var tapButtonStatus: [Bool] = [false,false,false,false,false]
    
    var body: some View {
        NavigationStack {
            ZStack{
                // Menggunakan gambar yang diimpor
                Image("Splash Screen 3")
                    .resizable() // Membuat gambar dapat diubah ukurannya
                    .aspectRatio(contentMode: .fill)
                
                VStack {
                    HStack {
                        ZStack {
                            Circle()
                                .stroke(Color.red, style: StrokeStyle(lineWidth: tapButtonStatus[0] ? 10 : 0))
                                .frame(width: 240, height: 240)
                                .opacity(0.8)
                                .animation(.easeIn(duration: 0.3), value: tapButtonStatus)
                            
                            Image("Mandio 5 Menit")
                                .resizable()
                                .frame(width:200 ,height: 200)
                                .onTapGesture {
                                    tapButtonStatus[0].toggle()
                                }
                        }
                        //                .foregroundColor(.white) // 2
                        //                    .background(.blue)
                        .offset(x: -418,y: -170)
                    }
                }
                
                ZStack {
                    Circle()
                        .stroke(Color.red, style: StrokeStyle(lineWidth: tapButtonStatus[1] ? 10 : 0))
                        .frame(width: 240, height: 240)
                        .opacity(0.8)
                        .animation(.easeIn(duration: 0.3), value: tapButtonStatus)
                    
                    Image("Mandio 15 Menit")
                        .resizable()
                        .frame(width:200 ,height: 200)
                        .onTapGesture {
                            tapButtonStatus[1].toggle()
                        }
                }
                //             //buat kasih frame untk tapped area
                //                .foregroundColor(.white) // 2
                //                    .background(.blue)
                .offset(x: 3,y: -170)
                
                ZStack {
                    Circle()
                        .stroke(Color.red, style: StrokeStyle(lineWidth: tapButtonStatus[2] ? 10 : 0))
                        .frame(width: 240, height: 240)
                        .opacity(0.8)
                        .animation(.easeIn(duration: 0.3), value: tapButtonStatus)
                    
                    Image("Mandio 30 Menit")
                        .resizable()
                        .frame(width:200 ,height: 200)
                        .onTapGesture {
                            tapButtonStatus[2].toggle()
                        }
                }
                .offset(x: 410,y: -170)
                
                
                HStack {
                    ZStack{
                        Circle()
                            .stroke(Color.red, style: StrokeStyle(lineWidth: tapButtonStatus[3] ? 10 : 0))
                            .frame(width: 240, height: 240)
                            .opacity(0.8)
                            .animation(.easeIn(duration: 0.3), value: tapButtonStatus)
                        
                        Image("Mandio 10 Menit")
                            .resizable()
                            .frame(width:200 ,height: 200)
                            .onTapGesture {
                                tapButtonStatus[3].toggle()
                            }
                    }
                    .offset(x: -200,y: 100)
                }
                
                ZStack{
                    Circle()
                        .stroke(Color.red, style: StrokeStyle(lineWidth: tapButtonStatus[4] ? 10 : 0))
                        .frame(width: 240, height: 240)
                        .opacity(0.8)
                        .animation(.easeIn(duration: 0.3), value: tapButtonStatus)
                    
                    Image("Mandio 20 Menit")
                        .resizable()
                        .frame(width:200 ,height: 200)
                        .onTapGesture {
                            tapButtonStatus[4].toggle()
                        }
                }                       .offset(x: 220,y: 100)
                
                
                
                // Tombol Back
                Button(action: {
                    AudioManager.shared.loadAudio4(named: "Bubble", withExtension:"mov")
                    dismiss()
                }){
                    Image("arrow_back")
                        .resizable()
                        .frame(width: 30, height: 30)
                }
                .offset(x: -480,y: -385)
                
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
                } .navigationBarBackButtonHidden(true)
            }
            .navigationDestination(isPresented: $isNavigating) {
                HowtoAnimation()
            }
            
        }.onAppear(){
            AudioManager.shared.playloadAudio3()
        }
        .onDisappear(){
            AudioManager.shared.stoploadAudio3()
        }
    }
}

struct Choosetime_Preview: PreviewProvider {
    static var previews: some View {
        Choosetime()
    }
}


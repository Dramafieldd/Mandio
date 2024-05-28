//
//  SplashScreen2.swift
//  Mandio
//
//  Created by Alicia Laurence on 21/05/24.
//
//

import SwiftUI
//TODO: ChooseTime 
struct ChooseTime: View {
    
    @State private var isNavigating = false
    @Environment(\.dismiss) var dismiss
    @State var tapButtonStatus: [Bool] = [false,false,false,false,false]
    
    var body: some View {
        NavigationStack {
            ZStack{
                
                //TODO: disini componentnya (text, background) ada yang dari gambar, tapi ada component yang front-end coding (yang bulet2 merah), menurut gw gak konsisten jadi mungkin bisa bikin bingung. Nama "Splash Screen 3" itu gak menjelaskan mana yang gambar mana yg front-end component
                
                //TODO: bikin card dari foto sama tulisan jadiin 1 biar bisa dipanggil aja.
                
                
                // Menggunakan gambar yang diimpor
                Image("Tujuan")
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
                        .offset(x: -418,y: -190)
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
                .offset(x: 3,y: -190)
                
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
                .offset(x: 410,y: -190)
                
                
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
                    .offset(x: -200,y: 90)
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
                }                       .offset(x: 220,y: 90)
                
                
                // Tombol Back
                Button(action: {
                    AudioManager.shared.loadAudio4(named: "Bubble", withExtension:"mov")
                    dismiss()
                }){
                    Image("arrow_back")
                        .resizable()
                        .frame(width: 30, height: 30)
                }
                .offset(x: -480,y: -390)
                
                VStack {
                    Text("How long You Want To Learn")
                        .font(.largeTitle)
                        .fontWeight(.medium)
                        .foregroundColor(Color.black)
                        .offset(x:0,y:-350)
                    
                    HStack{
                        Text("5 menit")
                            .font(.title)
                            .fontWeight(.medium)
                            .foregroundColor(Color.black)
                            .offset(x:-300, y:0)
                        
                        Text("15 menit")
                            .font(.title)
                            .fontWeight(.medium)
                            .foregroundColor(Color.black)
                            .offset(x:10, y:0)
                        
                        Text("30 menit")
                            .font(.title)
                            .fontWeight(.medium)
                            .foregroundColor(Color.black)
                            .offset(x:300, y:0)
                    }
                    
                    HStack{
                        Text("10 menit")
                            .font(.title)
                            .fontWeight(.medium)
                            .foregroundColor(Color.black)
                            .offset(x:-140, y:230)
                        
                        Text("20 menit")
                            .font(.title)
                            .fontWeight(.medium)
                            .foregroundColor(Color.black)
                            .offset(x:170, y:230)
                    }
                   
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
                    .offset(x:0,y:300)
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

struct ChooseTime_Preview: PreviewProvider {
    static var previews: some View {
        ChooseTime()
    }
}


//
//  MateriView.swift
//  Mandio
//
//  Created by Alicia Laurence on 21/05/24.
//

import SwiftUI

struct MateriView: View {
    var body: some View {
        NavigationStack {
            ZStack{
                // Menggunakan gambar yang diimpor
                Image("Materi")
                    .resizable() // Membuat gambar dapat diubah ukurannya
                    .aspectRatio(contentMode: .fill)
                
                VStack {
                    HStack {
                        ZStack{
                            //button back
                            Button(action: {
                            }){
                                NavigationLink(destination: ToKnow()){
                                    Image("arrow_back")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                }
                            }
                        }
                        .offset(x:-570,y:-400)
                    }
                }
                
                ZStack{
                    Image("The Word")
                        .resizable()
                        .frame(width: 200, height: 90)
                }.offset(x:-0,y:-400)
                
                ZStack{
                    Button(action: {
                    }){
                        NavigationLink(destination: WritingAnimation()){
                            Image("Buku")
                                .resizable()
                                .frame(width: 30, height:30)
                        }
                    }
                }.offset(x:490,y:-400)
                
                ZStack{
                    Image("speaker")
                        .resizable()
                        .frame(width: 30, height:30)
                }.offset(x:560,y:-400)
                
                ZStack{
                    Image("Buat nulis")
                        .resizable()
                        .frame(width: 500, height: 500)
                }
                
                HStack {
                    ZStack{
                        Image("AwalMula")
                            .resizable()
                            .frame(width:800 ,height: 100)
                    }.offset(x:0,y: 355)
                }
                
                ZStack{
                    Image("playButton")
                        .resizable()
                        .frame(width: 130, height:130)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                }.offset(x: 520 ,y: 290)
                
            }.navigationBarBackButtonHidden(true)
            
        }.onAppear(){
            AudioManager.shared.playloadAudio3()
        }
    }
}

struct MateriView_Preview: PreviewProvider {
    static var previews: some View {
        MateriView()
    }
}

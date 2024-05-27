//
//  HowtoAnimation.swift
//  Mandio
//
//  Created by Alicia Laurence on 21/05/24.
//

import SwiftUI

struct HowtoAnimation: View {
    
    @State var showFirstView = false
    @State var showSecondView = false
    @State var showThirdView = false
    @State var showFourthView = false
    @State var showFifthView = false
    @State var showSixView = false
    @State var showSevenView = false
    @State var showEightView = false
    @State var showNineView = false
    @State var showTenView = false
    
    var body: some View {
        NavigationStack {
            ZStack{
                // Menggunakan gambar yang diimpor
                Image("Penjelasan")
                    .resizable() // Membuat gambar dapat diubah ukurannya
                    .aspectRatio(contentMode: .fill)
                
                if showFirstView{
                    Image("1")
                        .resizable()
                        .frame(width: 240, height: 300)
                        .padding(.bottom, 350)
                        .padding(.trailing, 950)
                }
                
                if showSecondView {
                    Image("Vector 88")
                        .resizable()
                        .frame(width: 170, height: 70)
                        .padding(.bottom, 300)
                        .padding(.trailing, 450)
                }
                
                if showThirdView{
                    Image("2")
                        .resizable()
                        .frame(width: 280, height: 200)
                        .padding(.bottom, 300)
                        .padding(.trailing, 30)
                }
                
                if showFourthView{
                    Image("Vector 90")
                        .resizable()
                        .frame(width: 170, height: 70)
                        .padding(.bottom, 290)
                        .padding(.leading, 340)
                }
                
                if showFifthView{
                    Image("3")
                        .resizable()
                        .frame(width: 290, height: 200)
                        .padding(.bottom, 290)
                        .padding(.leading, 870)
                }
                
                if showSixView{
                    Image("Vector 94")
                        .resizable()
                        .frame(width: 550, height: 200)
                        .padding(.top, 190)
                        .padding(.leading, 50)
                }
                
                if showSevenView{
                    Image("4")
                        .resizable()
                        .frame(width: 300, height: 100)
                        .padding(.top, 370)
                        .padding(.trailing, 870)
                }
                
                if showEightView{
                    Image("Vector 92")
                        .resizable()
                        .frame(width: 400, height: 140)
                        .padding(.top, 680)
                        .padding(.trailing, 200)
                }
                
                if showEightView{
                    Image("5")
                        .resizable()
                        .frame(width: 180, height: 300 )
                        .padding(.top, 600)
                        .padding(.leading, 550)
                    
                }
                
                VStack {
                    NavigationLink(destination: ContentView()){
                        Image("quit button")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .padding(.bottom,  770)
                            .padding(.leading, 900)
                    }
                }
                if showTenView{
                    NavigationLink(destination: MateriView()){
                        Image("playButton")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .padding(.leading, 980)
                            .padding(.top, 680)
                            .shadow(radius: 10)
                    }
                }
            } .navigationBarBackButtonHidden(true)
        }.onAppear() {
            Timer.scheduledTimer(withTimeInterval: 1, repeats: false) { (_) in
                withAnimation {
                    self.showFirstView = true
                }
            }
            
            Timer.scheduledTimer(withTimeInterval: 2, repeats: false) { (_) in
                withAnimation {
                    self.showSecondView = true
                }
            }
            
            Timer.scheduledTimer(withTimeInterval: 3, repeats: false) { (_) in
                withAnimation {
                    self.showThirdView = true
                }
            }
            Timer.scheduledTimer(withTimeInterval: 4, repeats: false) { (_) in
                withAnimation {
                    self.showFourthView = true
                }
            }
            Timer.scheduledTimer(withTimeInterval: 5, repeats: false) { (_) in
                withAnimation {
                    self.showFifthView = true
                }
            }
            Timer.scheduledTimer(withTimeInterval: 6, repeats: false) { (_) in
                withAnimation {
                    self.showSixView = true
                }
            }
            Timer.scheduledTimer(withTimeInterval: 7, repeats: false) { (_) in
                withAnimation {
                    self.showSevenView = true
                }
            }
            Timer.scheduledTimer(withTimeInterval: 8, repeats: false) { (_) in
                withAnimation {
                    self.showEightView = true
                }
            }
            Timer.scheduledTimer(withTimeInterval: 9, repeats: false) { (_) in
                withAnimation {
                    self.showNineView = true
                }
            }
            Timer.scheduledTimer(withTimeInterval: 10, repeats: false) { (_) in
                withAnimation {
                    self.showTenView = true
                }
            }
        }.onAppear(){
            AudioManager.shared.playloadAudio3()
        }
    }
}
struct HowtoAnimation_Preview: PreviewProvider {
    static var previews: some View {
        HowtoAnimation()
    }
}

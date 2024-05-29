//
//  PencilCanvas.swift
//  Mandio
//
//  Created by Alicia Laurence on 28/05/24.
//

//Ini untuk membuat tampilan aplikasi
import SwiftUI
//Ini adalah pustaka yang menyediakan alat untuk menggambar dan menulis di layar.
import PencilKit

//Ini mendefinisikan tampilan khusus yang menggunakan alat gambar (canvas) dari UIKit di dalam SwiftUI
struct CanvasViewRepresentable: UIViewRepresentable{
    
    var canvasView: PKCanvasView
    let picker = PKToolPicker.init()
    
    //    //Fungsi ini membuat dan mengatur tampilan gambar (canvas) saat pertama kali muncul.
    func makeUIView(context: Context) -> PKCanvasView {
        self.canvasView.tool = PKInkingTool(.pen, color: .black, width: 15)
        self.canvasView.becomeFirstResponder()
        return canvasView
    }
    
    //    //Fungsi ini untuk memperbarui tampilan jika ada perubahan dari SwiftUI. Dalam hal ini, fungsinya kosong karena tidak ada pembaruan yang dibutuhkan
    func updateUIView(_ uiView: PKCanvasView, context: Context) {
        picker.addObserver(canvasView)
        picker.setVisible(true, forFirstResponder: uiView)
        DispatchQueue.main.async {
            uiView.becomeFirstResponder()
        }
    }
}

//
//    //Ini memungkinkan tampilan ini untuk berinteraksi dengan data dari luar, khususnya objek PKCanvasView yang menyimpan gambar Anda.
//    @Binding var canvasView: PKCanvasView
//    
//    func makeUIView(context: Context) -> PKCanvasView {
//        
//        //Ini mengatur agar hanya Apple Pencil yang bisa digunakan untuk menggambar (tidak bisa pakai jari).
//        canvasView.drawingPolicy = .pencilOnly
//        return canvasView
//    }

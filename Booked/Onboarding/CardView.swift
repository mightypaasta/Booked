//
//  CardView.swift
//  Booked
//
//  Created by Kamal Nayan on 22/10/23.
//

import SwiftUI

struct CardView: View {
    
    @Binding var selectedImage: Image?
    @State private var isImagePickerPresented = false

    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.yellow)
                .frame(width:103,height:145)
                .cornerRadius(10)
                .overlay{
                    
                }

            if let image = selectedImage {
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width:103,height:145)
                    .cornerRadius(10)
            } else {
                Button("Select Photo") {
                    isImagePickerPresented.toggle()
                }
            }
        }
        .sheet(isPresented: $isImagePickerPresented) {
            ImagePicker(selectedImage: $selectedImage)
        }
    }
}


//
//  AddPhotosView.swift
//  Booked
//
//  Created by Kamal Nayan on 22/10/23.
//

import SwiftUI

struct AddPhotosView: View {
    
    @State private var selectedImages: [Image?] = Array(repeating: nil, count: 6)
    
    var body: some View {
        VStack(spacing:30){
            VStack(alignment:.leading){
                Text("Add Photos")
                    .font(.system(size:40,weight:.semibold))
                Text("Add atleast 2 photos to continue")
                    .font(
                        Font.custom("Inter", size: 15)
                            .weight(.medium)
                    )
                    .foregroundColor(Color.gray)
            }
            VStack(spacing:20){
                HStack(spacing:20){
                    CardView(selectedImage: $selectedImages[0])
                    CardView(selectedImage: $selectedImages[1])
                    CardView(selectedImage: $selectedImages[2])
                }
                HStack(spacing:20){
                    CardView(selectedImage: $selectedImages[3])
                    CardView(selectedImage: $selectedImages[4])
                    CardView(selectedImage: $selectedImages[5])
                }
            }
        }
    }
}

#Preview {
    AddPhotosView()
}

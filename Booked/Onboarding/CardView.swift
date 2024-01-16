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
        ZStack(alignment:.bottomTrailing) {
            Rectangle()
                .stroke(Color(red: 0.86, green: 0.87, blue: 0.9), style: StrokeStyle(lineWidth: 3, dash: [6, 6]))
                .frame(width:103,height:145)
                .cornerRadius(10)
                .overlay{
                    
                }

            if let image = selectedImage {
                ZStack(alignment:.bottomTrailing){
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width:103,height:145)
                        .cornerRadius(10)
                    Button(action: {
                                    // Add your action for the '+' button here
                        isImagePickerPresented.toggle()
                                }) {
                                    Circle()
                                        .fill(Color.white)
                                        .frame(width: 30, height: 30)
                                        .overlay(
                                            Text("x")
                                                .font(.system(size: 25, weight: .bold))
                                                .foregroundColor(.blue)
                                                .position(x:15,y:13)
                                        )
                                }
                                .padding(.bottom,-5)
                                .padding(.trailing,-10)
                                .shadow(radius:5)
                }
                    
            } else {
//                Button("Select Photo") {
//                    isImagePickerPresented.toggle()
//                }
                Button(action: {
                                // Add your action for the '+' button here
                    isImagePickerPresented.toggle()
                            }) {
//                                Image(systemName: "plus.circle.fill")
//                                    .font(.system(size: 30))
//                                    .foregroundStyle(Color.cyan)
                                Circle()
                                    .fill(Color.blue)
                                    .frame(width:30,height:30)
                                    .overlay{
                                        Image(systemName: "plus")
                                            .foregroundStyle(Color.white)
                                            .fontWeight(.bold)
                                    }
                            }
                            .padding(.bottom,-5)
                            .padding(.trailing,-10)
                            .shadow(radius:5)
            }
        }
        .sheet(isPresented: $isImagePickerPresented) {
            ImagePicker(selectedImage: $selectedImage)
        }
    }
}

#Preview{
    CardView(selectedImage: .constant(nil))
}

//
//  FirstNameView.swift
//  Booked
//
//  Created by Kamal Nayan on 22/10/23.
//

import SwiftUI

struct FirstNameView: View {
    
    @State var firstName: String
    
    var body: some View {
        VStack(spacing:40){
            VStack(alignment:.leading){
                VStack{
                    Text("My first")
                    Text("name is")
                }
                .font(.system(size: 38,weight: .semibold))
                TextField("Enter your first name",text: $firstName,onCommit: {})
                    .frame(width: 230)
                    .padding(.bottom,15)
                    .overlay(Divider()
                        .frame(minHeight:3)
                        .background(Color.gray)
                             ,alignment: .bottomLeading)
                Text("This is how it will appear in Tinder and you will not be able to change it")
                  .font(
                    Font.custom("Inter", size: 13.19317)
                      .weight(.medium)
                  )
                  .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.58))
                  .frame(width: 234.79231, alignment: .topLeading)
                  .padding(.top,10)
            }
            Button{
                
            }label:{
                Text("CONTINUE")
                    .font(.system(size:20,weight: .bold))
                    .padding()
                    .foregroundStyle(Color.white)
                    .frame(width:300)
            }
            .background(Color.black)
            .clipShape(RoundedRectangle(cornerRadius: 35))
        }
    }
}

#Preview {
    FirstNameView(firstName: "")
}

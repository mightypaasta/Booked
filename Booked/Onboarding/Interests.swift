//
//  Interests.swift
//  Booked
//
//  Created by Kamal Nayan on 22/10/23.
//

import SwiftUI

struct InterestButton: View {
    
    var interestName: String
    @State var accent: Color = Color.gray
    
    var body: some View{
        Button{
                accent = accent == Color.gray ? Color.pink : Color.gray
        }label:{
            Text(interestName)
                .font(.system(size:18,weight: .bold))
//                .font(
//                Font.custom("Inter", size: 14.98394)
//                .weight(.bold)
//                )
                .padding(.horizontal,12)
                .padding(.vertical,8)
                .foregroundStyle(accent)
        }
        .overlay(RoundedRectangle(cornerRadius: 25.0).stroke(accent,lineWidth: 3))
        .padding([.top,.trailing,.leading],4)
    }
}

struct Interests: View {
    
    let interests: [String] = ["90s Kid","SoundCloud","Harry Potter","Spa","Self Care","Heavy Metal","House Parties","Gin Tonic","Gymnastic","Hapkido","Hot Yoga","Meditation","Spotify","Sushi","Hockey","Basketball","Slam Poetry","Home Workout","Theater","Cafe Hopping","Aquarium","Sneakers","Instagram","Hot Springs","Walking","Running","Travel"]
    
    let columns = [GridItem(.adaptive(minimum:100))]
    var body: some View {
        VStack(spacing:20) {
            VStack(alignment:.leading,spacing:20){
                Text("Interests")
                    .font(.system(size:40,weight:.semibold))
                Text("Let everyone know what you’re interested\nin by adding it to your profile.")
                    .font(
                        Font.custom("Inter", size: 15)
                            .weight(.medium)
                    )
                    .foregroundColor(Color.gray)
            }
            VStack(alignment:.leading){
                ScrollView{
                    LazyVGrid(columns:columns,alignment: .leading,spacing:10){
                        ForEach(interests,id:\.self){item in
                            InterestButton(interestName: item)
//                                .border(Color.blue)
                        }
                    }
                }
            }
            .frame(width:298,height:470)
            .fixedSize(horizontal: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
        }
//        .border(Color.black)
    }
}

#Preview {
    Interests()
}

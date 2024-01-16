//
//  WelcomePage.swift
//  Booked
//
//  Created by Kamal Nayan on 29/10/23.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack(spacing:10){
            Image("tinder-2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:50,height: 70)
            VStack{
                Text("Welcome to Booked.")
                    .font(.system(size:22,weight: .semibold))
                Text("Please remember these $tupid Rules")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.gray)
            }
            VStack(spacing:20){
                VStack(alignment:.leading,spacing:10) {
                    HStack(spacing:15){
                        Text(Image(systemName: "checkmark")).font(.system(size:15)).fontWeight(.bold).foregroundStyle(Color.blue)
                        Text("Be yourself.")
                            .font(.system(size:15,weight:.semibold))
                        Spacer()
                    }
                    Text("Make sure your photo,age and bio are true to who you are!")
                        .font(.system(size:13,weight: .bold))
                        .lineSpacing(3)
                        .foregroundStyle(Color.gray)
                }
                VStack(alignment:.leading,spacing:10) {
                    HStack(spacing:15){
                        Text(Image(systemName: "checkmark")).font(.system(size:15)).fontWeight(.bold).foregroundStyle(Color.blue)
                        Text("Stay Safe.")
                            .font(.system(size:15,weight:.semibold))
                        Spacer()
                    }
                    (Text("Don't be too quick to give out personal information. ") + Text("[Data Saftey](https://google.com)")
                        .underline())
                        .font(.system(size:13,weight: .bold))
                        .lineSpacing(3)
                        .foregroundStyle(Color.gray)
                }
                VStack(alignment:.leading,spacing:10) {
                    HStack(spacing:15){
                        Text(Image(systemName: "checkmark")).font(.system(size:15)).fontWeight(.bold).foregroundStyle(Color.blue)
                        Text("Play it cool.")
                            .font(.system(size:15,weight:.semibold))
                        Spacer()
                    }
                    Text("Respect others and treat them as you would like to be treated")
                        .font(.system(size:13,weight: .bold))
                        .lineSpacing(3)
                        .foregroundStyle(Color.gray)
                }
                VStack(alignment:.leading,spacing:10) {
                    HStack(spacing:15){
                        Text(Image(systemName: "checkmark")).font(.system(size:15)).fontWeight(.bold).foregroundStyle(Color.blue)
                        Text("Be proactive.")
                            .font(.system(size:15,weight:.semibold))
                        Spacer()
                    }
                    Text("Always report bad behavior")
                        .font(.system(size:13,weight: .bold))
                        .lineSpacing(3)
                        .foregroundStyle(Color.gray)
                }
            }
            .padding(.top,20)
        }
        .padding(.horizontal,20)
    }
}

#Preview {
    WelcomePage()
}

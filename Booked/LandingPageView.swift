//
//  ContentView.swift
//  Booked
//
//  Created by Kamal Nayan on 20/10/23.
//

import SwiftUI

struct LandingPageView: View {
    
    @State private var animateGradient: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Image("tinder-2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:50,height: 70)
//                Image(systemName: "flame.fill")
//                    .font(.system(size: 60))
//                    .foregroundStyle(Color.blue)
                HStack(spacing: 0) {
                    ZStack {
                        Text("H")
                            .fontWeight(.heavy)
                            .foregroundStyle(Color.white)
                            .padding(0)
                        
                        Text("/")
                            .font(.system(size: 50))
                            .fontWeight(.regular)
                            .foregroundStyle(Color.pink)
                            .padding(.bottom)
                    }
                    Text("Booked")
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                }
                .font(.system(size: 40))
            }
//            .padding(.leading)
        }
        .edgesIgnoringSafeArea(.all)
        .frame(maxWidth:.infinity,maxHeight: .infinity)
        .background{
            LinearGradient(colors: [Color.cyan,Color.pink], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea(.all)
                .hueRotation(.degrees(animateGradient ? 90 : 0))
                .onAppear{
                    withAnimation(.easeInOut(duration: 3).repeatForever(autoreverses: true)) {
                        animateGradient.toggle()
                    }
                }
        }

    }
}

#Preview {
    LandingPageView()
}

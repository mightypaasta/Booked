//
//  LoginScreen.swift
//  Booked
//
//  Created by Kamal Nayan on 20/10/23.
//

import SwiftUI

struct LoginView: View {
    
    @State private var animateGradient: Bool = false
    
    var body: some View {
        VStack(alignment:.center){
            Spacer(minLength: 400)
            VStack {
                HStack{
                    Image("tinder-2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:50,height: 70)
                        .foregroundStyle(.tint)
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
                        //                        Text("Book")
                        //                            .fontWeight(.heavy)
                        //                            .foregroundColor(Color.white)
                        //                        Text("UP")
                        //                            .font(.system(size: 40,weight:.heavy))
                        //                            .foregroundColor(Color.pink)
                    }
                    .font(.system(size: 40))
                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 2)
                }
                //                .padding(.leading)
                Spacer()
                VStack{
                    Text("By tapping Create Account or Sign In, you agree to our Terms. Learn how we process your data in our Privacy Policy and Cookies Policy.")
                        .font(
                            Font.custom("Inter", size: 12.42821)
                                .weight(.medium)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .frame(width: 303.3154, alignment: .top)
                        .padding(.bottom,20)
                    LoginButtonView(text: "Sign in with Google",icon:"google")
                    //                    .padding()
                    LoginButtonView(text: "Sign in with Apple",icon:"apple")
                    //                    .padding()
                    LoginButtonView(text: "Sign in with Facebook",icon:"facebook")
                    //                    .padding()
                }
                .frame(maxWidth:.infinity)
                .foregroundColor(.white)
                Text("Trouble Signing In?")
                    .font(
                        Font.custom("Inter", size: 14.10769)
                            .weight(.medium)
                    )
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .padding(.top,10)
                Spacer()
            }
            
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
    LoginView()
}

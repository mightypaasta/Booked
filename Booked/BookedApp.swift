//
//  BookedApp.swift
//  Booked
//
//  Created by Kamal Nayan on 20/10/23.
//

import SwiftUI

@main
struct BookedApp: App {
    
    @State var isActive:Bool = false
    
    var body: some Scene {
        WindowGroup {
            VStack{
                if self.isActive{
                    LoginView()
                } else{
                    LandingPageView()
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline:.now()+2.5){
                    withAnimation{
                        self.isActive.toggle()
                    }
                }
            }
        }
        .windowResizability(.contentSize)
    }
}

//
//  LoginButtonView.swift
//  Booked
//
//  Created by Kamal Nayan on 21/10/23.
//

import SwiftUI
import Auth0

struct LoginButtonView: View {
    
    var text: String
    var icon: String
    @State var onTap: Bool = false
    
    var body: some View {
        Button{
            onTap.toggle()
            self.login()
        }label: {
            HStack{
                Text(text)
                    .textCase(.uppercase)
                if (icon == "google") {
                    Image(uiImage: UIImage(named: "google1")!)
                } else if (icon == "facebook"){
                    Image(uiImage: UIImage(named: "fb1")!)
                }
                else{
                    Image(systemName: "apple.logo")
                        .font(.system(size:20))
                        .foregroundStyle(Color.black)
                }
            }
            .foregroundColor(Color.black)
            .padding(.horizontal,40)
            .padding(.vertical,12)
        }
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 50))
        .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.black,lineWidth: 2))
    }
}

extension LoginButtonView{
    func login(){
        Auth0
            .webAuth()
            .start { result in
                switch result {
                case .success(let credentials):
                    print("Obtained credentials: \(credentials)")
                case .failure(let error):
                    print("Failed with: \(error)")
                }
            }
    }
}

#Preview {
    LoginButtonView(text:"Sign up with Apple",icon:"apple.logo")
}

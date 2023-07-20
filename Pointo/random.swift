//
//  random.swift
//  Pointo
//
//  Created by Alperen Kavuk on 20.07.2023.
//

import SwiftUI


struct random: View {
    @State private var password = ""
       @State private var replayPassword = ""
       @State private var showLoginPage = false
       
       var body: some View {
           NavigationView {
               VStack {
                   ZStack {
                       Image("background1")
                           .resizable()
                           .scaledToFill()
                           .edgesIgnoringSafeArea(.leading)
                           .frame(maxWidth: .infinity, maxHeight: 50)
                           .position(x: Double(196.6), y: -255)

                       Image("pointo")
                           .position(x: 200, y: -50)

                       VStack {
                           Text("Yeni şifrenizi belirleyiniz")
                               .fontWeight(.bold)
                               .position(x: 100, y: -155)
                               .frame(maxWidth: 300, maxHeight: 200)
                               .font(.custom("Plus Jakarta Sans", size: 25))

                           Text("Şifre")
                               .fontWeight(.bold)
                               .font(.custom("Plus Jakarta Sans", size: 10))
                               .foregroundColor(Color.gray)
                               .position(x: 28, y: -135)

                           TextField("Şifreniz", text: $password)
                               .textFieldStyle(RoundedBorderTextFieldStyle())
                               .frame(maxWidth: 335, maxHeight: 80)
                               .position(x: 185, y: -130)

                           Text("Şifre Onayı")
                               .fontWeight(.bold)
                               .font(.custom("Plus Jakarta Sans", size: 10))
                               .foregroundColor(Color.gray)
                               .position(x: 42, y: -115)

                           TextField("Şifrenizi tekrar giriniz", text: $replayPassword)
                               .textFieldStyle(RoundedBorderTextFieldStyle())
                               .frame(maxWidth: 335, maxHeight: 80)
                               .position(x: 185, y: -110)

                           Button(action: {

                           }) {
                               Text("Yeni Şifre Oluştur")
                                   .font(.headline)
                                   .fontWeight(.bold)
                                   .frame(maxWidth: 335, maxHeight: 26)
                                   .foregroundColor(.white)
                                   .padding()
                                   .background(Color(hex: "#142239"))
                                   .cornerRadius(10)
                           }
                           .position(x: 194, y: -60)



                       }
                       .position(x: 200, y: 160)

                       HStack {
                           Rectangle()
                               .frame(width: 120, height: 1)
                               .foregroundColor(.gray)
                               .position(x: 80, y: 45)

                           Text("ya da")
                               .font(.custom("bold", size: 10))
                               .foregroundColor(.gray)
                               .position(x: 60, y: 45)

                           Rectangle()
                               .frame(width: 120, height: 1)
                               .foregroundColor(.gray)
                               .position(x: 40, y: 45)

                       }
                       .position(x: 200, y: 90)

                       HStack {
                           Text("Şifrenizi hatırlıyor musunuz?")
                               .font(.subheadline)
                               .foregroundColor(.black)
                               .position(x: 164, y: -14)

                           NavigationLink(destination: LoginPage(), isActive: $showLoginPage) {
                               EmptyView()
                           }

                           Button(action: {

                              showLoginPage = true

                           }) {
                               Text(" Giriş Yap")
                                   .font(.subheadline)
                                   .foregroundColor(.red)
                                   .frame(maxWidth: 280, maxHeight: 24)

                           }
                           .position(x: 93, y: -14)

                       }
                       .position(x: 190, y: 40)
                   }
                   .overlay(
                       VStack {
                           Spacer()
                           Rectangle()
                               .fill(Color.white)
                               .frame(maxWidth: .infinity, maxHeight: .infinity)
                               .cornerRadius(60)
                       }
                       .frame(maxWidth: 100, maxHeight: 0)
                       .edgesIgnoringSafeArea(.all)
                   )
               }
           }
       }
   }

struct random_Previews: PreviewProvider {
    static var previews: some View {
        random()
    }
}


struct ConvexCornerShape: Shape {
    let cornerRadius: CGFloat
    let corners: UIRectCorner
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: cornerRadius, height: cornerRadius))
        return Path(path.cgPath)
    }
}

//
//  ResetPassword.swift
//  Pointo
//
//  Created by Alperen Kavuk on 19.07.2023.
//

import SwiftUI

struct ResetPassword: View {
    
    @State private var username = ""
    @State private var showLoginPage = false
    var body: some View {
        NavigationView{
            ZStack{
                
            VStack{
                /*Image("background1")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.leading)
                    .frame(maxWidth: .infinity ,maxHeight: 50)
                    .position(x:Double(196.6),y:-265)*/
               
                Image("exxestock")
                    .resizable()
                    .aspectRatio( contentMode: .fill)
                    .position(x:Double(196.6),y:20)
                    
                
                Image("pointo")
                    .position(x:200,y: -160)
                
                
                VStack{
                    Text("Şifrenizi sıfırlayın")
                        .fontWeight(.bold)
                        .font(.custom("Plus Jakarta Sans", size: 25))
                        .frame(maxWidth: 200,maxHeight: 10)
                        .position(x:110,y:-135)
                    
                    Text("E posta adresi")
                        .fontWeight(.bold)
                        .font(.custom("Plus Jakarta Sans", size: 10))
                        .foregroundColor(Color.gray)
                        .position(x:50,y:-145)
                    
                    TextField("E posta adresiniz", text: $username)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(maxWidth: 335,maxHeight: 80)
                        .position(x:185,y:-180)
                    Button(action: {
                        
                    }) {
                        Text("Yeni Şifre Oluştur")
                            .font(.headline)
                            .fontWeight(.bold)
                            .frame(maxWidth: 335,maxHeight: 26)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(hex: "#142239"))
                            .cornerRadius(10)
                    }
                    .position(x:194,y:-170)
                    
                }.position(x:200,y: -30)
            }
                HStack{
                    Rectangle()
                        .frame(width: 120, height: 1)
                        .foregroundColor(.gray)
                        .position(x:80,y: 45)
                    
                    Text("ya da")
                        .font(.custom("bold", size: 10))
                        .foregroundColor(.gray)
                        .position(x:60,y:45)
                    
                    
                    Rectangle()
                        .frame(width: 120, height: 1)
                        .foregroundColor(.gray)
                        .position(x:40,y: 45)
                    
                }.position(x:200,y:790)
                
                HStack{
                    Text("Hesabınız yok mu?")
                        .font(.subheadline)
                        .foregroundColor(.black)
                        .position(x:133,y:984)
                    
                    NavigationLink(destination: LoginPage(), isActive: $showLoginPage) {
                        EmptyView()
                    }
                    
                    
                    Button(action: {
                        
                       showLoginPage = true
                        
                    }) {
                        Text(" IT ile iletişime geç")
                            .font(.subheadline)
                            .foregroundColor(.red)
                            .frame(maxWidth: 280, maxHeight: 24)
                            
                           
                    }.position(x:61,y:984)
                   
                }.position(x:190,y:-110)
            }
           
        }
    }
}

struct ResetPassword_Previews: PreviewProvider {
    static var previews: some View {
        ResetPassword()
    }
}

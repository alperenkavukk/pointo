//
//  LoginPage.swift
//  Pointo
//
//  Created by Alperen Kavuk on 18.07.2023.
//

import SwiftUI

struct LoginPage: View {
    
    @State private var username = ""
    @State private var password = ""
    @State private var showContentPage = false
    var body: some View {
      
        NavigationView{
            
            VStack {
                Image("background1")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .frame(maxWidth: .infinity ,maxHeight: 50)
                    .position(x:Double(196.6),y:-205)
                
                Image("pointo")
                    .position(x:200,y:0)
                
                VStack {
                    Text("Hesabınıza giriş yapın")
                        .fontWeight(.bold)
                        .position(x:-40,y:50)
                        .frame(maxWidth: 130,maxHeight: 58)
                        .font(.custom("Plus Jakarta Sans", size: 25))
                        
                    
                }
                VStack{
                    Text("E Posta adresi")
                        .font(.custom("bold", size: 10))
                        .keyboardType(.emailAddress)
                        .position(x:45,y: 30)
                    
                    TextField("E posta adresiniz", text: $username)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(maxWidth: 335,maxHeight: 80)
                        .position(x:160,y:35)
                        .padding()
                    
                    Text("Şifre")
                        .font(.custom("bold", size: 10))
                        .position(x:23,y:51)
                    
                    SecureField("Şifreniz", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(maxWidth: 335,maxHeight: 80)
                        .position(x:160,y:57)
                        .padding()
                    
                    
                    Button(action: {
                        
                    }) {
                        Text("Şifremi Unuttum?")
                            .font(.subheadline)
                            .foregroundColor(.black)
                            .frame(maxWidth: 129,maxHeight: 24)
                            
                            .padding()
                    }.position(x:180,y:100)
                    
                    NavigationLink(destination: ContentView(), isActive: $showContentPage) {
                        EmptyView()
                    }
                    
                    
                    Button(action: {
                        showContentPage = true
                    }) {
                        Text("Giriş Yap")
                            .font(.headline)
                            .fontWeight(.bold)
                            .frame(maxWidth: 335,maxHeight: 26)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(hex: "#142239"))
                            .cornerRadius(10)
                            
                    }.position(x:180,y:155)
                }
                
                
               
             
                .padding()
                
                HStack {
                    
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
                    
                }
                .position(x:200,y:205)
                
                
                Text("Hesabınız yok mu?")
                    .font(.subheadline)
                    .foregroundColor(.black)
                    .position(x:135,y:107)
                
                
                Button(action: {
                    
                    //iletişim
                }) {
                    Text(" IT ile iletişime geç")
                        .font(.subheadline)
                        .foregroundColor(.red)
                        .frame(maxWidth: 280, maxHeight: 24)
                        
                        .padding()
                }.position(x:262,y: -25)
                .padding(.bottom, 20)
                
            }
            .background(Color.white)
            .edgesIgnoringSafeArea(.all)
            
        }
    }
}


struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        scanner.scanLocation = 0
        
        var rgbValue: UInt64 = 0
        
        scanner.scanHexInt64(&rgbValue)
        
        let r = Double((rgbValue & 0xFF0000) >> 16) / 255.0
        let g = Double((rgbValue & 0x00FF00) >> 8) / 255.0
        let b = Double(rgbValue & 0x0000FF) / 255.0
        
        self.init(red: r, green: g, blue: b)
    }
}



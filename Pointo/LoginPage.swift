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
                    Text("Hesabınıza giriş yapınız")
                        .fontWeight(.bold)
                        .position(x:100,y:-160)
                        .frame(maxWidth: 300,maxHeight: 200)
                        .font(.custom("Plus Jakarta Sans", size: 25))
                    
                    Text("E posta")
                        .fontWeight(.bold)
                        .font(.custom("Plus Jakarta Sans", size: 10))
                        .foregroundColor(Color.gray)
                        .position(x:32,y:-150)
                    
                    TextField("E posta adresiniz", text: $username)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(maxWidth: 350,maxHeight: 80)
                        .position(x:190,y:-158)
                    
                    Text("Şifre ")
                        .fontWeight(.bold)
                        .font(.custom("Plus Jakarta Sans", size: 10))
                        .foregroundColor(Color.gray)
                        .position(x:27,y:-150)
                    
                    TextField("Şifreniz", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(maxWidth: 350,maxHeight: 80)
                        .position(x:190,y:-160)
                    
                    Button {
                        
                    } label: {
                        Text("Şifremi unuttum?")
                            .font(.subheadline)
                            .foregroundColor(.black)
                    }.position(x:186,y:-145)

                    
                    Button(action: {
                        
                    }) {
                        Text("Giriş Yap")
                            .font(.headline)
                            .fontWeight(.bold)
                            .frame(maxWidth: 335,maxHeight: 26)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(hex: "#142239"))
                            .cornerRadius(10)
                        
                    }
                    .position(x:194,y:-130)
                    
                }
                .position(x:200,y: 5)
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
                    
                }.position(x:200,y:870)
                
                HStack{
                    Text("Hesabınız yok mu?")
                        .font(.subheadline)
                        .foregroundColor(.black)
                        .position(x:164,y:-14)
                    
                    NavigationLink(destination: LoginPage(), isActive: $showContentPage) {
                        EmptyView()
                    }
                    
                    
                    Button(action: {
                        
                       showContentPage = true
                        
                    }) {
                        Text("IT ile iletişime geç")
                            .font(.subheadline)
                            .foregroundColor(.red)
                            .frame(maxWidth: 280, maxHeight: 24)
                            
                           
                    }.position(x:93,y:-14)
                       
                }.position(x:170,y:960)
                    
            }
            
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



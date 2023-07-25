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
    @State private var showResetPage = false
    @State private var showPassword = false
    

    var body: some View {
       
           
            ZStack{
                
                Color.white
                    
                    
            VStack{
                
                 Image("exxestock")
                     .resizable()
                     .aspectRatio( contentMode: .fill)
                     .position(x:Double(196.6),y:0)
                     .offset(y: 20)
                     .frame(maxWidth: 625,maxHeight: 324)
                Image("pointo")
                    .frame(maxWidth: 176,maxHeight: 60)
                    .position(x:200,y: -174)
                
                VStack{
                    Image("white")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 410, height: 650)
                        .clipShape(RoundedRectangle(cornerRadius:30))
                        .position(x:193,y:90)
                    
                    
                    
                    GeometryReader { geometry in
                        Text("Hesabınıza giriş yapın")
                            .font(.custom("Plus Jakarta Sans", size: 32))
                            .fontWeight(.bold)
                            .frame(width: 184, height: 104)
                    } 
                    .position(x: 210, y: -220)
                    Spacer()
                    
                    Text("E posta adresi")
                        .fontWeight(.bold)
                        .font(.custom("Plus Jakarta Sans", size: 8))
                        .foregroundColor(Color.gray)
                        .position(x:49,y:-140)
                        .offset(x: 0, y: 0)
                    
                    TextField("E posta adresiniz", text: $username)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(maxWidth: 335,maxHeight: 80)
                        .position(x:190,y:-140)
                        .offset(x: 0, y: 0)
                    
                    
                    Text("Şifre ")
                        .fontWeight(.bold)
                        .font(.custom("Plus Jakarta Sans", size: 8))
                        .foregroundColor(Color.gray)
                        .position(x:34,y:-130)
                        .offset(x: 0, y: 0)
                    
                    Group{
                        if showPassword{
                            SecureField("Şifreniz", text: $password)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .frame(maxWidth: 335,maxHeight: 80)
                                .position(x:196,y:-130)
                                .offset(x: 0, y: 0)
                        }else{
                            TextField("Şifreniz", text: $password)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .frame(maxWidth: 335,maxHeight: 80)
                                .position(x:190,y:-130)
                                .offset(x: 0, y: 0)
                        }
                    }
                    
                    Button(action: {
                        showPassword.toggle()
                    }) {
                        Image(systemName: showPassword ? "eye.slash.fill" : "eye.fill")
                            .foregroundColor(.gray)
                            
                    }.position(x:337,y:-157)
                    
                    Button {
                        
                    } label: {
                        Text("Şifremi unuttum?")
                            .font(.subheadline)
                            .foregroundColor(.black)
                            .frame(maxWidth: 129,maxHeight: 24)
                    }.position(x:194,y:-133)
                      
                    
                    Button(action: {
                        
                    }) {
                        Text("Giriş Yap")
                            .font(.custom("Plus Jakarta Sans", size: 16))                            .frame(maxWidth: 303,maxHeight: 56)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(hex: "#142239"))
                            .cornerRadius(10)
                        
                    }
                    .position(x:194,y:-100)
                    
                }//vsStack
                

                .position(x:200,y:5)
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
                    
                }.position(x:200,y:860)
                    
              
                
                HStack{
                    Text("Hesabınız yok mu?")
                        .font(.subheadline)
                        .foregroundColor(Color(hex: "#7C7D82"))
                        .position(x:164,y:-14)
                    
                    NavigationLink(destination: ResetPassword(), isActive: $showResetPage) {
                        EmptyView()
                    }.hidden()
                    
                    
                    Button(action: {
                        
                       showResetPage = true
                        
                    }) {
                        Text("IT ile iletişime geç")
                            .font(.subheadline)
                            .foregroundColor(.red)
                            .frame(maxWidth: 280, maxHeight: 24)
                            
                           
                    }.position(x:93,y:-14)
                       
                }.position(x:168,y:960)
                    
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



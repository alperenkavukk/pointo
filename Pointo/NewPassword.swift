//
//  NewPassword.swift
//  Pointo
//
//  Created by Alperen Kavuk on 19.07.2023.
//

import SwiftUI

    struct NewPassword: View {
        @State private var password = ""
        @State private var replayPassword = ""
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
                        Text("Yeni şifrenizi belirleyiniz")
                            .fontWeight(.bold)
                            .position(x:100,y:-160)
                            .frame(maxWidth: 300,maxHeight: 200)
                            .font(.custom("Plus Jakarta Sans", size: 25))
                        
                        Text("Şifre")
                            .fontWeight(.bold)
                            .font(.custom("Plus Jakarta Sans", size: 10))
                            .foregroundColor(Color.gray)
                            .position(x:28,y:-150)
                        
                        TextField("Şifreniz", text: $password)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .frame(maxWidth: 335,maxHeight: 80)
                            .position(x:185,y:-163)
                        
                        Text("Şifre Onayı")
                            .fontWeight(.bold)
                            .font(.custom("Plus Jakarta Sans", size: 10))
                            .foregroundColor(Color.gray)
                            .position(x:42,y:-165)
                        
                        TextField("Şifrenizi tekrar giriniz", text: $replayPassword)
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
                        .position(x:194,y:-150)
                        
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
                        
                    }.position(x:200,y:850)
                    
                    HStack{
                        Text("Şifrenizi hatırlıyor musunuz?")
                            .font(.subheadline)
                            .foregroundColor(.black)
                            .position(x:164,y:-14)
                        
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
                                
                               
                        }.position(x:93,y:-14)
                           
                    }.position(x:190,y:940)
                        
                }
                
            }
        }
    }
        

struct NewPassword_Previews: PreviewProvider {
    static var previews: some View {
        NewPassword()
    }
}

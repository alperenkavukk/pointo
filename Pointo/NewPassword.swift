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
        @State private var showPassword = false
        @State private var showPassword2 = false
        var body: some View {
           
               
                ZStack{
                    
                VStack{
                    
                     Image("exxestock")
                         .resizable()
                         .aspectRatio( contentMode: .fill)
                         .position(x:Double(196.6),y:0)
                         .offset(y: 20)
                         .frame(maxWidth: 625,maxHeight: 324)
                         .offset(y: 20)
               
                     Image("pointo")
                         .position(x:200,y: -195)

                    VStack{
                        Image("white")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 410, height: 650)
                            .clipShape(RoundedRectangle(cornerRadius:30))
                            .position(x:193,y:90)
                        
                        
                        GeometryReader { geometry in
                            Text("Yeni şifrenizi belirleyin")
                                .font(.custom("Plus Jakarta Sans", size: 32))
                                .fontWeight(.bold)
                                .frame(width: 184, height: 104)
                        }
                        .position(x: 220, y: -235)
                        
                        Text("Şifre")
                            .fontWeight(.bold)
                            .font(.custom("Plus Jakarta Sans", size: 10))
                            .foregroundColor(Color.gray)
                            .position(x:35,y:-155)
                        
                        Group{
                            if showPassword{
                                SecureField("Şifreniz", text: $password)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .frame(maxWidth: 335,maxHeight: 80)
                                    .position(x:191,y:-155)
                            }else{
                                TextField("Şifreniz", text: $password)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .frame(maxWidth: 335,maxHeight: 80)
                                    .position(x:191,y:-155)
                            }
                        }
                        
                        
                       
                        Button(action: {
                            showPassword.toggle()
                        }) {
                            Image(systemName: showPassword ? "eye.slash.fill" : "eye.fill")
                                .foregroundColor(.gray)
                                
                        }.position(x:337,y:-183)
                        
                        Text("Şifre Onayı")
                            .fontWeight(.bold)
                            .font(.custom("Plus Jakarta Sans", size: 10))
                            .foregroundColor(Color.gray)
                            .position(x:50,y:-173)
                        
                        Group{
                            if showPassword2{
                                SecureField("Şifrenizi tekrar giriniz", text: $replayPassword)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .frame(maxWidth: 335,maxHeight: 80)
                                    .position(x:191,y:-173)
                            }
                            else
                            {
                                TextField("Şifrenizi tekrar giriniz", text: $replayPassword)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .frame(maxWidth: 335,maxHeight: 80)
                                    .position(x:191,y:-173)
                            }
                        }
                        
                        
                       
                        Button(action: {
                            showPassword2.toggle()
                        }) {
                            Image(systemName: showPassword ? "eye.slash.fill" : "eye.fill")
                                .foregroundColor(.gray)
                                
                        }.position(x:337,y:-200)
                        
                        Button(action: {
                            
                        }) {
                            Text("Yeni Şifre Oluştur")
                                .font(.headline)
                                .fontWeight(.bold)
                                .frame(maxWidth: 305,maxHeight: 26)
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
                        
                    }.position(x:200,y:810)
                    
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
                           
                    }.position(x:190,y:910)
                        
                }
                
            }
        }
    

struct NewPassword_Previews: PreviewProvider {
    static var previews: some View {
        NewPassword()
    }
}

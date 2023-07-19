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
        
        var body: some View {
           
            
            VStack {
                Image("background1")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .frame(maxWidth: .infinity ,maxHeight: .infinity)
                    .position(x:Double(196.6),y:110)
                Image("pointo").position(x:200,y: -50)
                
                VStack {
                    Text("Hesabınıza giriş yapın")
                        .fontWeight(.bold)
                        .position(x:-50,y:-50)
                        .frame(maxWidth: 130,maxHeight: 58)
                        .font(.custom("Plus Jakarta Sans", size: 25))
                        .bold()
             
                }
                VStack{
                    Text("E Posta adresi")
                        .font(.custom("bold", size: 10))
                        .position(x:52,y: -45)
                    
                    TextField("E posta adresiniz", text: $username)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .position(x:180,y:-70)
                        .padding()
                  
                    Text("Şifre")
                        .font(.custom("bold", size: 10))
                        .position(x:27,y:-55)
                    
                    SecureField("Şifreniz", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .position(x:180,y:-80)
                        .padding()
                }
                
               
              
                Button(action: {
                
                }) {
                    Text("Şifremi Unuttum?")
                        .font(.subheadline)
                        .foregroundColor(.black)
                        .frame(maxWidth: 129,maxHeight: 24)
                        .position(x:180,y:-50)
                        .padding()
                }
           
                Button(action: {
                    // Giriş yap işlemi
                }) {
                    Text("Giriş Yap")
                        .font(.headline)
                        .fontWeight(.bold)
                        .frame(maxWidth: 335,maxHeight: 26)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color(.systemBlue))
                        .cornerRadius(10)
                        .position(x:182,y:-150)
                }
                .padding()
                
                Spacer()
            }
            .background(Color.white)
            .edgesIgnoringSafeArea(.all)
            
        }
}
struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}

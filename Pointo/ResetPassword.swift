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
        
            ZStack{
                
            VStack{
                
               
                Image("exxestock")
                    .resizable()
                    .aspectRatio( contentMode: .fill)
                    .position(x:Double(196.6),y:0)
                    .offset(y: 20)
                    .frame(maxWidth:625,maxHeight: 324)
                    .offset(y: 20)
                    
                
                Image("pointo")
                    .position(x:200,y: -195)
                
                
                VStack(spacing: 5){
                    Image("white")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 410, height: 580)
                        .clipShape(RoundedRectangle(cornerRadius:30))
                        .position(x:193,y:90)
                    
                    
                    GeometryReader { geometry in
                        Text("Şifrenizi sıfırlayın")
                            .font(.custom("Plus Jakarta Sans", size: 32))
                            .fontWeight(.bold)
                            .frame(width: 184, height: 104)
                    }
                    .position(x: 190, y: -205)
                    
                    Text("E posta adresi")
                        .fontWeight(.bold)
                        .font(.custom("Plus Jakarta Sans", size: 10))
                        .foregroundColor(Color.gray)
                        .position(x:60,y:-170)
                        
                        
                    
                    TextField("E posta adresiniz", text: $username)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(maxWidth: 335,maxHeight: 80)
                        .position(x:194,y:-190)
                        
                    
                    Button(action: {
                        
                    }) {
                        Text("Yeni Şifre Oluştur")
                            .font(.headline)
                            .fontWeight(.bold)
                            .frame(maxWidth: 303,maxHeight: 56)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(hex: "#142239"))
                            .cornerRadius(10)
                    }
                    .position(x:194,y:-182)
                    
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
                    
                    }
                .position(x:200,y:720)
                    
                HStack{
                    Text("Maili mi unuttunuz?")
                        .font(.subheadline)
                        .foregroundColor(.black)
                        .position(x:133,y:984)
                    
                    NavigationLink(destination: NewPassword(), isActive: $showLoginPage) {
                        EmptyView()
                    }
                    
                    
                    Button(action: {
                        
                       showLoginPage = true
                        
                    }) {
                        Text(" IT ile iletişime geç")
                            .font(.subheadline)
                            .foregroundColor(.red)
                            .frame(maxWidth: 280, maxHeight: 24)
                            
                           
                    }.position(x:63,y:984)
                   
                }.position(x:185,y:-180)
            }
           
        }
    }


struct ResetPassword_Previews: PreviewProvider {
    static var previews: some View {
        ResetPassword()
    }
}

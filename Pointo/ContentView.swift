//
//  ContentView.swift
//  Pointo
//
//  Created by Alperen Kavuk on 18.07.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var textFieldText = ""

    var body: some View {
       
        VStack(alignment: .leading){
            
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 148, maxHeight: 148)
                .position(x: 195, y: 180)
               
                
                
            Text("Pointo çalışanları için hazırlamış olduğumuz bu uygulamaya giriş yaparak erişebilirsiniz!")
                .font(.custom("Plus Jakarta Sans", size: 20))
                .foregroundColor(.white)
                .frame(maxWidth: 320, maxHeight: 100)
                .position(x: 200, y: 150)
                .lineLimit(nil)
                .lineSpacing(5)
                .padding(4)
            
            Button(action: {
                
            }) {
                Text("Hemen başla")
                    .font(.custom("Plus Jakarta Sans", size: 20))
                    .fontWeight(.semibold)
                    .frame(maxWidth: 210, maxHeight: 56)
                    .background(Color(.red))
                    .cornerRadius(12)
                    .foregroundColor(.white)
                    .position(x: 200, y: 200)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity).background(Image("background1")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .edgesIgnoringSafeArea(.all))
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



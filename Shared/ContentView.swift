//
//  ContentView.swift
//  Shared
//
//  Created by Stefan Ruzic on 21.9.21..
//

import SwiftUI

struct ContentView: View {
    @State private var credits = 1000
    
    var body: some View {
        ZStack {
            // Background
            Rectangle()
                .foregroundColor(Color(red: 200/255, green: 143/255, blue: 32/255))
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Rectangle()
                .foregroundColor(Color(red: 228/255, green: 185/255, blue: 76/255))
                .rotationEffect(Angle(degrees: 45))
                .ignoresSafeArea(.all)
            VStack {
                Spacer()
                
                // Title
                
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    
                    Text("SwiftUI Slots")
                        .bold()
                        .foregroundColor(.white)
                    
                    
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                }.scaleEffect(2)
                
                Spacer()
                
                // Credits counter
                Text("Credits:" + String(credits))
                    .foregroundColor(.black)
                    .padding(.all, 10)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(20)
                Spacer()
                // Cards
                HStack {
                    Spacer()
                    
                    Image("apple")
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                    Image("apple")
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                    Image("apple")
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                    
                    Spacer()
                    
                }
                Spacer()
                
                // Button
                Button(action: {
                    self.credits += 1
                    
                }) {
                    Text("Spin")
                        .bold()
                        .foregroundColor(.white)
                        .padding(.all, 10)
                        .padding([.leading, .trailing], 30)
                        .background(Color.pink)
                        .cornerRadius(20)
                    
                    
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

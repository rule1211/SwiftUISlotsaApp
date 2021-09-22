//
//  ContentView.swift
//  Shared
//
//  Created by Stefan Ruzic on 21.9.21..
//

import SwiftUI

struct ContentView: View {
    
    @State private var symbols = ["apple", "star", "cherry"]
    @State private var numbers = Array(repeating: 0, count: 9)
    @State private var backgrounds = Array(repeating: Color.white, count: 9)
    @State private var credits = 1000
    private var betAmount = 5
    
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
                VStack {
                    HStack {
                        Spacer()
                        
                        CardView(symbol: $symbols[numbers[0]], background: $backgrounds[0])
                        
                        CardView(symbol: $symbols[numbers[1]], background: $backgrounds[1])
                        
                        CardView(symbol: $symbols[numbers[2]], background: $backgrounds[2])
                        
                        
                        Spacer()
                        
                    }
                    HStack {
                        Spacer()
                        
                        CardView(symbol: $symbols[numbers[3]], background: $backgrounds[3])
                        
                        CardView(symbol: $symbols[numbers[4]], background: $backgrounds[4])
                        
                        CardView(symbol: $symbols[numbers[5]], background: $backgrounds[5])
                        
                        
                        Spacer()
                        
                    }
                    HStack {
                        Spacer()
                        
                        CardView(symbol: $symbols[numbers[6]], background: $backgrounds[6])
                        
                        CardView(symbol: $symbols[numbers[7]], background: $backgrounds[7])
                        
                        CardView(symbol: $symbols[numbers[8]], background: $backgrounds[8])
                        
                        
                        Spacer()
                        
                    }
                }
                Spacer()
                
                // Button
                Button(action: {
                    
                    
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
    func processResults(_ isMax:Bool = false) {
        
        // Set backrounds back to white
        
        self.backgrounds = self.backgrounds.map({
            _ in
            Color.white
        })
        if isMax {
            //Spin all the cards
            
        }
        else {
            // Spin the middle row
            
        }
        
        //self.backgrounds[0] = Color.white
       // self.backgrounds[1] = Color.white
      //  self.backgrounds[2] = Color.white
        
        // Change the images
        
        self.numbers[0] = Int.random(in: 0...self.symbols.count - 1)
        self.numbers[1] = Int.random(in: 0...self.symbols.count - 1)
        self.numbers[2] = Int.random(in: 0...self.symbols.count - 1)
        
        // Check winnings
        if self.numbers[0] == self.numbers[1] && self.numbers[1] == self.numbers[2] {
            // Won
            
            self.credits += self.betAmount * 10
            
            // Update backgrounds to green
            
            self.backgrounds[0] = Color.green
            self.backgrounds[1] = Color.green
            self.backgrounds[2] = Color.green
            
            
        }
        else {
            self.credits -= self.betAmount
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  CardView.swift
//  SwiftUISlotsaApp (iOS)
//
//  Created by Stefan Ruzic on 21.9.21..
//

import SwiftUI

struct CardView: View {
    
    @Binding var symbol:String
    @Binding var background:Color
    
    
    var body: some View {
        
        
        Image(symbol)
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .background(background.opacity(0.5))
            .cornerRadius(20)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(symbol: Binding.constant("cheery"), background: Binding.constant(Color.green))
    }
}

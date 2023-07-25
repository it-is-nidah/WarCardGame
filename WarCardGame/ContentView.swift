//
//  ContentView.swift
//  WarCardGame
//
//  Created by Leonidah Chepkoech on 7/25/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background-plain")
            VStack {
                Image("logo")
                HStack {
                    Image("card2")
                    Image("card3")
                }
                
                Image("button")
                HStack {
                    VStack {
                        Text("Player")
                        Text("0")
                    }
                    
                    VStack {
                        Text("CPU")
                        Text("0")
                    }
                    
                }
                .foregroundColor(.white)
                .font(.title2)
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

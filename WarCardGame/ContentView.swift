//
//  ContentView.swift
//  WarCardGame
//
//  Created by Leonidah Chepkoech on 7/25/23.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "card5"
    @State var cpuCard = "card12"
    
    @State var playerScore: Int = 0
    @State var cpuScore: Int = 0
    
    var body: some View {
        ZStack {
            Image("background-cloth")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button {
                    dealCards()
                } label: {
                    Image("button")
                }

                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
            
                Spacer()
            }
            
        }

    }
    func dealCards() {
        var playerValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerValue)

        var cpuValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuValue)

        if cpuValue < playerValue {
            playerScore += 1
        }
        else if cpuValue > playerValue {
            cpuScore += 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

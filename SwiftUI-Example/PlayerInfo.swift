//
//  ContentView.swift
//  SwiftUI-Example
//
//  Created by Admin on 7/18/19.
//  Copyright © 2019 Keyur Sosa. All rights reserved.
//

import SwiftUI

struct PlayerInfo: View {
    
    var player: Player
    
    var body: some View {
        VStack {
            //Adding Team Image
            Image(player.team.imageName)
                .resizable()
                .frame(height: 250)
            //Adding Avatar Image
            Image(player.imageName)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .background(Circle())
                .foregroundColor(.white)
                .overlay(Circle()
                .stroke(Color.white, lineWidth: 4))
                .shadow(radius: 15)
                .offset(x: 0, y: -80).padding(.bottom, -80)

            Text(player.name)
                .font(.system(size: 50))
                .fontWeight(.heavy)
                .padding(.leading)
                .padding(.trailing)
                .minimumScaleFactor(0.5)
            
            //Reusable view code
            StasticsView(
                name: "Age:",
                value: String(player.age)
            )
            StasticsView(
                name: "Height:",
                value: String(player.height)
            )
            StasticsView(
                name: "Weight:",
                value: String(player.weight)
            )

            Spacer()
        }.edgesIgnoringSafeArea(.top)
    }
}

#if DEBUG
struct PlayerInfo_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PlayerInfo(player: players[0]).previewDevice("iPhone XS Max")
            PlayerInfo(player: players[0]).previewDevice("iPhone SE")
        }
        
    }
}
#endif

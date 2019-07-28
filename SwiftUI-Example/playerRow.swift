//
//  playerList.swift
//  SwiftUI-Example
//
//  Created by Admin on 7/23/19.
//  Copyright © 2019 Keyur Sosa. All rights reserved.
//

import SwiftUI

struct playerRow: View {
    
    var player: Player
    
    var body: some View {
        HStack {
            Image(player.imageName).resizable()
                .frame(width: 50.0, height: 50.0)
                .scaledToFit()
                .clipShape(Circle())
                .background(Circle()
                    .foregroundColor(player.team.color)
                )
            Text(player.name).font(.largeTitle).minimumScaleFactor(0.5)
            Spacer()
        }
    }
}

#if DEBUG
struct playerRow_Previews: PreviewProvider {
    static var previews: some View {
//        playerRow(player: players[0])
//            .previewLayout(
//                .fixed(width: 500, height: 100)
//        )
        playerRow(player: players[0])
                    .previewLayout(
                        .fixed(width: 500, height: 100)
                )
    }
}
#endif

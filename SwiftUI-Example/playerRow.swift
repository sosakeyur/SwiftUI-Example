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
                .scaledToFit()
                .clipShape(Circle())
                .background(Circle()
                    .foregroundColor(player.team.color)
                )
            Text(player.name).font(.largeTitle)
            Spacer()
        }
    }
}

#if DEBUG
struct playerRow_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            playerRow(player: players[0])
                .previewLayout(
                    .fixed(width: 500, height: 0)
            )
        }
    }
}
#endif

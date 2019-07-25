//
//  PlayerList.swift
//  SwiftUI-Example
//
//  Created by Admin on 7/23/19.
//  Copyright © 2019 Keyur Sosa. All rights reserved.
//

import SwiftUI

struct PlayerList: View {
    var body: some View {
        NavigationView {
            List(players) {
                player in
                NavigationLink(destination: PlayerInfo(player: player)){
                    playerRow(player: player).frame(width: 500, height: 80, alignment: .leading)
                }
            }.navigationBarTitle(Text("Players List"),displayMode:.large)
        }
    }
}

#if DEBUG
struct PlayerList_Previews: PreviewProvider {
    static var previews: some View {
        PlayerList()
    }
}
#endif

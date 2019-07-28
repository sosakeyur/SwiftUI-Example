//
//  StasticsView.swift
//  SwiftUI-Example
//
//  Created by Admin on 7/23/19.
//  Copyright © 2019 Keyur Sosa. All rights reserved.
//

import SwiftUI

struct StasticsView: View {
    
    var name: String
    var value: String
    
    var body: some View {
        HStack {
            Text(name)
                .font(.system(size: 45))
                .fontWeight(.bold).padding(.leading, 30).minimumScaleFactor(0.5)
            Text(value)
                .font(.system(size: 45))
                .fontWeight(.light).padding(.trailing, 30).minimumScaleFactor(0.5)
            Spacer()
        }
    }
}

#if DEBUG
struct StasticsView_Previews: PreviewProvider {
    static var previews: some View {
        StasticsView(name: "Age:", value: "34")
    }
}
#endif

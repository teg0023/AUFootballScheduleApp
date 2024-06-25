//
//  GameItem.swift
//  AUFootballSchedule
//
//  Created by user254330 on 6/25/24.
//

import SwiftUI

struct GameItem: View {
    var body: some View {
        VStack {
            HStack {
                Text("Week 1")
                Image("Alabama A&M")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text("Alabama A&M")
                    .multilineTextAlignment(.center)
                Text("Nonconference")
            }
            HStack {
                Text("Jordan-Hare Stadium, Auburn, AL")
                    .multilineTextAlignment(.center)
                Text("6:30pm CST")
                Text("08/31/2024")
            }
        }
    }
}

#Preview {
    GameItem()
}

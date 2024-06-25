//
//  GameItem.swift
//  AUFootballSchedule
//
//  Created by user254330 on 6/25/24.
//

import SwiftUI

struct GameItem: View {
    var body: some View {
        HStack {
            Text("Week 1")
            Image("Alabama A&M")
            Text("Alabama A&M")
            Text("Nonconference")
            Spacer()
            Text("Location")
            Text("GameTime")
            Text("GameDate")
        }
    }
}

#Preview {
    GameItem()
}

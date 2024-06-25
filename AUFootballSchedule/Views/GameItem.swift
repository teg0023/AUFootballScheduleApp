//
//  GameItem.swift
//  AUFootballSchedule
//
//  Created by user254330 on 6/25/24.
//

import SwiftUI

struct GameItem: View {
    
    var game : AUFootballScheduleModel
    var body: some View {
        VStack {
            HStack {
                Text("Week \(game.week)")
                Image(game.opponent)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text(game.opponent)
                    .multilineTextAlignment(.center)
                Text(game.conferenceType)
            }
            HStack {
                Text(game.location)
                    .multilineTextAlignment(.center)
                Text(game.gameTime)
                Text(game.gameDate)
            }
        }
    }
}

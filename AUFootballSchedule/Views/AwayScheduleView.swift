//
//  AwayScheduleView.swift
//  AUFootballSchedule
//
//  Created by user254330 on 6/24/24.
//

import SwiftUI

struct AwayScheduleView: View {
    var awaySchedule: [AUFootballScheduleModel]
    var body: some View {
        List {
            ForEach(awaySchedule) { game in
                if game.location != "Jordan-Hare Stadium, Auburn, AL" {
                    Group {
                        GameItem(game: game)
                    }
                }
            }
        }
    }
}

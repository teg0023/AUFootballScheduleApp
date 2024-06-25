//
//  NonconferenceView.swift
//  AUFootballSchedule
//
//  Created by user254330 on 6/24/24.
//

import SwiftUI

struct NonconferenceView: View {
    var nonconferenceSchedule: [AUFootballScheduleModel]
    var body: some View {
        List {
            ForEach(nonconferenceSchedule) { game in
                if game.conferenceType == "Nonconference" {
                    Group {
                        GameItem(game: game)
                    }
                }
            }
        }
    }
}

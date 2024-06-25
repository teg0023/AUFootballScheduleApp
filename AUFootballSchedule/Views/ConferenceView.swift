//
//  ConferenceView.swift
//  AUFootballSchedule
//
//  Created by user254330 on 6/24/24.
//

import SwiftUI

struct ConferenceView: View {
    var conferenceSchedule: [AUFootballScheduleModel]
    var body: some View {
        List {
            ForEach(conferenceSchedule) { game in
                if game.conferenceType == "SEC" {
                    Group {
                        GameItem(game: game)
                    }
                }
            }
        }
    }
}

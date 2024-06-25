//
//  HomeScheduleView.swift
//  AUFootballSchedule
//
//  Created by user254330 on 6/24/24.
//

import SwiftUI

struct HomeScheduleView: View {
    var homeSchedule: [AUFootballScheduleModel]
    var body: some View {
        List {
            ForEach(homeSchedule) { game in
                if game.location == "Jordan-Hare Stadium, Auburn, AL" {
                    Group {
                        GameItem(game: game)
                    }
                }
            }
        }
    }
}

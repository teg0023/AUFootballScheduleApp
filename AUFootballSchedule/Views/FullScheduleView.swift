//
//  FullScheduleView.swift
//  AUFootballSchedule
//
//  Created by user254330 on 6/24/24.
//

import SwiftUI

struct FullScheduleView: View {
    
    var fullSchedule: [AUFootballScheduleModel]
    var body: some View {
        List {
            ForEach(fullSchedule) { game in
                Group {
                    GameItem(game: game)
                }
            }
        }
    }
}

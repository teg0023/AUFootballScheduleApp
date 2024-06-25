//
//  AUFootballScheduleModel.swift
//  AUFootballSchedule
//
//  Created by user254330 on 6/24/24.
//

import Foundation
import FirebaseFirestoreSwift

struct AUFootballScheduleModel : Codable, Identifiable {
    @DocumentID var id: String?
    var week: Int
    var opponent: String
    var conferenceType: String
    var location: String
    var gameTime: String
    var gameDate: String
}

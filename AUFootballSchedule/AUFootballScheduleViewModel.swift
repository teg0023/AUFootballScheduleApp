//
//  AUFootballScheduleViewModel.swift
//  AUFootballSchedule
//
//  Created by user254330 on 6/24/24.
//

import Foundation

class AUFootballScheduleViewModel : ObservableObject {
    
    @Published private var schedule = [AUFootballScheduleModel]()
    
    func fetchData() {
        
    }
}

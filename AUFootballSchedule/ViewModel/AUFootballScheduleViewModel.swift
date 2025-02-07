//
//  AUFootballScheduleViewModel.swift
//  AUFootballSchedule
//
//  Created by user254330 on 6/24/24.
//

import Foundation
import FirebaseCore
import FirebaseFirestore

class AUFootballScheduleViewModel : ObservableObject {
    
    @Published private(set) var schedule = [AUFootballScheduleModel]()
    private let db = Firestore.firestore()
    
    func fetchData() {
        self.schedule.removeAll()
        db.collection("schedule").order(by: "week")
            .getDocuments() { (querySnapshot, err) in
                if let err = err {
                    print("Error getting documents: \(err)")
                }
                else {
                    for document in querySnapshot!.documents {
                        do {
                            self.schedule.append(try document.data(as: AUFootballScheduleModel.self))
                        }
                        catch {
                            print(error)
                        }
                    }
                }
            }
    }
}

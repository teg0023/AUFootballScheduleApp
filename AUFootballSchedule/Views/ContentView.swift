//
//  ContentView.swift
//  AUFootballSchedule
//
//  Created by user254330 on 6/24/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var schedule = AUFootballScheduleViewModel()
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    FullScheduleView(fullSchedule: schedule.schedule)
                } label: {
                    Text("Full Schedule")
                }
                Text("Home Schedule")
                Text("Away Schedule")
                Text("SEC Schedule")
                Text("Nonconference Schedule")
            }
            .navigationTitle("2024 Auburn Football Schedule")
            .listStyle(.grouped)
        }
        .onAppear {
            schedule.fetchData()
        }
    }
}

#Preview {
    ContentView()
}

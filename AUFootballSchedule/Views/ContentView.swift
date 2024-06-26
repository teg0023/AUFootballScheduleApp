//
//  ContentView.swift
//  AUFootballSchedule
//
//  Created by user254330 on 6/24/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isHeadCoach = false
    @State private var isWarEagle = false
    @ObservedObject var schedule = AUFootballScheduleViewModel()
    var body: some View {
        NavigationStack {
            List {
                Image("Stadium")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .border(.orange, width: 10.0)
                NavigationLink {
                    FullScheduleView(fullSchedule: schedule.schedule)
                } label: {
                    Text("Full Schedule")
                }
                NavigationLink {
                    HomeScheduleView(homeSchedule: schedule.schedule)
                } label: {
                    Text("Home Schedule")
                }
                NavigationLink {
                    AwayScheduleView(awaySchedule: schedule.schedule)
                } label: {
                    Text("Away Schedule")
                }
                NavigationLink {
                    ConferenceView(conferenceSchedule: schedule.schedule)
                } label: {
                    Text("SEC Schedule")
                }
                NavigationLink {
                    NonconferenceView(nonconferenceSchedule: schedule.schedule)
                } label: {
                    Text("Nonconference Schedule")
                }
                Toggle(isOn: $isHeadCoach) {
                    Text("Head Coach")
                }
                if isHeadCoach {
                    Text("Hugh Freeze")
                        .bold()
                        .foregroundStyle(.orange)
                }
                Toggle(isOn: $isWarEagle) {
                    Text("?")
                }
                if isWarEagle {
                    Text("War Eagle! 🦅🐅")
                        .bold()
                        .foregroundStyle(.blue)
                }
            }
            .navigationTitle("2024 Auburn Football Schedule")
        }
        .onAppear {
            schedule.fetchData()
        }
    }
}

#Preview {
    ContentView()
}

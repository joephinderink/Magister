//
//  ScheduleView.swift
//  Magister
//
//  Created by Joep Hinderink on 14/01/2021.
//

import SwiftUI

struct ScheduleView: View {
    
    @EnvironmentObject var states : states
    
    var body: some View {
        VStack {
            if states.showDatebar {
                DatePicker("", selection: $states.dateSelected)
                    .offset(x: -UIScreen.main.bounds.width / 4)
            }
            ScrollView {
                HourRow(hour: "1", time: "08:15 - 09:05", subject: "Wiskunde", teacher: "Docent")
                HourRow(hour: "2", time: "09:05 - 09:55", subject: "Geschiedenis", teacher: "Docent")
                HourRow(hour: "3", time: "09:55 - 10:45", subject: "Engels", teacher: "Docent")
                HourRow(hour: "4", time: "11:05 - 11:55", subject: "Duits", teacher: "Docent")
                HourRow(hour: "5", time: "11:55 - 12:45", subject: "Nederlands", teacher: "Docent")
                HourRow(hour: "6", time: "13:15 - 14:05", subject: "Economie", teacher: "Docent")
                HourRow(hour: "7", time: "14:05 - 14:55", subject: "Beco", teacher: "Docent")
            }
        }
    }
}

struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView()
            .environmentObject(states())
    }
}

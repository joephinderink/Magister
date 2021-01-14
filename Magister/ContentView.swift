//
//  ContentView.swift
//  Magister
//
//  Created by Joep Hinderink on 13/01/2021.
//

import SwiftUI

struct ContentView: View {
    
    // Widgets maken
    
    @EnvironmentObject var states : states
    
    var body: some View {
        ZStack {
            VStack {
                MenuBar()
                    .transition(.move(edge: .leading))
                if states.showSchedule {
                    ScheduleView()
                } else if states.showSettings {
                    Settings()
                }
                Spacer()
            }
            .offset(x: states.showMenu ? UIScreen.main.bounds.width / 1.91 : 0)
            if states.showMenu {
                SideBar()
                    .transition(.move(edge: .leading))
                    .offset(x: -UIScreen.main.bounds.width / 2)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(states())
    }
}

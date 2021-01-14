//
//  SideBar.swift
//  Magister
//
//  Created by Joep Hinderink on 13/01/2021.
//

import SwiftUI

class states: ObservableObject {
    @Published var showDatebar = false
    @Published var showMenu = false
    @Published var showSchedule = true
    @Published var showSettings = false
    @Published var dateSelected = Date()
}

struct SideBar: View {
    
    @EnvironmentObject var states : states
    
    var body: some View {
        HStack {
            VStack (alignment: .trailing) {
                ProfileRowView(name: "Joep Hinderink", klas: "4V3")
                Button (action: {
                    states.showSchedule = true
                }, label: {
                    HStack {
                        Image(systemName: "calendar")
                        Text("Schedule")
                    }
                    .foregroundColor(.black)
                    .padding()
                })
                Button (action: {
                    states.showSettings = true
                    states.showSchedule = false
                }, label: {
                    HStack {
                        Image(systemName: "gearshape.fill")
                        Text("Settings")
                    }
                    .foregroundColor(.black)
                    .padding()
                })
                Spacer()
            }
            .padding(.vertical, 50)
            .frame(width: UIScreen.main.bounds.width, alignment: .trailing)
            .background(Color.white)
            Divider()
        }
    }
}

struct SideBar_Previews: PreviewProvider {
    static var previews: some View {
        SideBar()
            .environmentObject(states())
    }
}

//
//  MenuBar.swift
//  Magister
//
//  Created by Joep Hinderink on 13/01/2021.
//

import SwiftUI

struct MenuBar: View {
    
    @EnvironmentObject var states : states
    
    var body: some View {
        VStack {
            HStack {
                Button (action: {
                    withAnimation {
                        states.showMenu.toggle()
                    }
                }, label: {
                    Image(systemName: "line.horizontal.3")
                })
                .padding(.leading)
                Spacer()
                Text("Vandaag")
                    .font(.callout)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Spacer()
                if states.showSchedule {
                Button(action: {
                    withAnimation {
                        states.showDatebar.toggle()
                    }
                }, label: {
                    Image(systemName: "calendar")
                })
                .padding(.trailing)
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: 40)
            Divider()
        }
    }
}

struct MenuBar_Previews: PreviewProvider {
    static var previews: some View {
        MenuBar()
            .previewLayout(.sizeThatFits)
    }
}

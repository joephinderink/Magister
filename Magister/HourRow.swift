//
//  HourRow.swift
//  Magister
//
//  Created by Joep Hinderink on 14/01/2021.
//

import SwiftUI

struct HourRow: View {
    
    var hour : String
    var time : String
    var subject : String
    var teacher : String
    
    var body: some View {
        HStack {
            VStack (alignment: .leading) {
                Text(time)
                    .fontWeight(.heavy)
                HStack {
                    Text(hour)
                        .fontWeight(.heavy)
                        .foregroundColor(.accentColor)
                    Text(subject)
                    Text("(\(teacher))")
                }
            }
            Spacer()
            Button (action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Huiswerk")
                    .fontWeight(.heavy)
                    .font(.caption)
                    .foregroundColor(.white)
                    .padding(3)
                    .background(Color.accentColor)
                    .cornerRadius(5)
            })
        }
        .frame(width: UIScreen.main.bounds.width / 1.1, height: 50)
        Divider()
    }
}

struct HourRow_Previews: PreviewProvider {
    static var previews: some View {
        HourRow(hour: "2", time: "09:05 - 09:55", subject: "Geschiedenis", teacher: "Docent")
    }
}

//
//  ProfileRowView.swift
//  Magister
//
//  Created by Joep Hinderink on 14/01/2021.
//

import SwiftUI

struct ProfileRowView: View {
    
    var name : String
    var klas : String
    
    var body: some View {
        Button (action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            VStack (alignment: .trailing){
                HStack {
                    VStack (alignment: .trailing) {
                        Text(name)
                        Text(klas)
                            .font(.caption)
                    }
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding(.trailing)
                }
                Divider()
            }
        })
    }
}

struct ProfileRowView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileRowView(name: "Joep Hinderink", klas: "4V3")
    }
}

//
//  PlusButton.swift
//  Magister
//
//  Created by Joep Hinderink on 13/01/2021.
//

import SwiftUI

struct PlusButton: View {
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Image(systemName: "plus")
                .foregroundColor(.white)
                .font(.headline)
                .frame(width: 70, height: 70)
                .background(Color.accentColor)
                .cornerRadius(80)
        })
    }
}

struct PlusButton_Previews: PreviewProvider {
    static var previews: some View {
        PlusButton()
    }
}

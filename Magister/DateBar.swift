//
//  DateBar.swift
//  Magister
//
//  Created by Joep Hinderink on 13/01/2021.
//

import SwiftUI

struct DateBar: View {
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false) {
            HStack {
                ForEach(1 ..< 32) { number in
                    HStack {
                        Text("\(number)")
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                            .frame(width: 25, height: 25)
                            .background(Color.accentColor)
                            .cornerRadius(8)
                            .padding(5)
                    }
                }
            }
            .padding(.leading)
        }
    }
}

struct DateBar_Previews: PreviewProvider {
    static var previews: some View {
        DateBar()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

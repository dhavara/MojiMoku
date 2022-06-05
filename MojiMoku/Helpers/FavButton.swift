//
//  FavButton.swift
//  MojiMoku
//
//  Created by Macbook Pro on 05/06/22.
//

import SwiftUI

struct FavButton: View {
    @Binding var isSet: Bool
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "heart.fill" : "heart.fill")
                .labelStyle(IconOnlyLabelStyle())
                .foregroundColor(isSet ? .purple : .gray)
                .frame(width: 50, height: 50)
                .scaleEffect(3)
        }
    }
}

struct FavButton_Previews: PreviewProvider {
    static var previews: some View {
        FavButton(isSet: .constant(true))
    }
}

//
//  CircleImage.swift
//  MojiMoku
//
//  Created by Macbook Pro on 31/05/22.
//

import SwiftUI

struct CircleImage: View {
    var image: AsyncImage<Image>
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImage(url: URL(string: "https://ami.animecharactersdatabase.com/./images/naruto/Sasuke_Uchiha_thumb.jpg"))
            .frame(width: 200, height: 200)
        CircleImage(image: AsyncImage(url: URL(string: "https://ami.animecharactersdatabase.com/./images/naruto/Sasuke_Uchiha_thumb.jpg")))
    }
}

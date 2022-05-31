//
//  ContentView.swift
//  MojiMoku
//
//  Created by Macbook Pro on 24/05/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack{
            
            CircleImage(image: AsyncImage(url: URL(string: ModelData().animeChars[9].character_image)))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

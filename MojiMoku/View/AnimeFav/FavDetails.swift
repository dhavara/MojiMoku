//
//  Details.swift
//  MojiMoku
//
//  Created by Macbook Pro on 05/06/22.
//

import SwiftUI

struct FavDetails: View {
    @EnvironmentObject var modelData: ModelData
    var animeChar: AnimeCharData
    
    var animeCharIndex: Int {
        modelData.animeChars.firstIndex(where: {$0.id == animeChar.id })!
    }
    
    var body: some View {
        VStack{
            CircleImage(image: AsyncImage(url: URL(string: animeChar.character_image)))
            FavButton(isSet: $modelData.animeChars[animeCharIndex].favorite)
            
            VStack(alignment: .center){
                Text(animeChar.name)
                    .bold()
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text(animeChar.origin)
                    .font(.title2)
                    .foregroundColor(.purple)
                
                Divider()
            }
            .frame(maxWidth: .infinity)
            
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Description")
                        .bold()
                        .font(.title2)
                        .foregroundColor(.purple)
                    
                    ScrollView {
                        Text(animeChar.desc)
                    }
                    .frame(maxHeight: .infinity)
                }
                .padding()
            }
        }
    }
}

struct FavDetails_Previews: PreviewProvider {
    static var previews: some View {
        FavDetails(animeChar: ModelData().animeChars[9])
            .environmentObject(ModelData())
    }
}

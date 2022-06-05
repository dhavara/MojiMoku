//
//  HomeMain.swift
//  MojiMoku
//
//  Created by Macbook Pro on 31/05/22.
//

import SwiftUI

struct HomeMain: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView{
            List{
                ForEach(modelData.categories.keys.sorted(), id: \.self) {key in
                    HomeRow(category: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .listStyle(InsetListStyle())
            .navigationTitle("Home")
        }
    }
}

struct HomeMain_Previews: PreviewProvider {
    static var previews: some View {
        HomeMain()
            .environmentObject(ModelData())
    }
}

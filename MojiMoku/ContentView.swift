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
            Text("Welcome")
                .foregroundColor(.purple)
                .font(.system(size: 30))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

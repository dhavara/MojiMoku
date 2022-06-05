//
//  MojiMokuApp.swift
//  MojiMoku
//
//  Created by Macbook Pro on 24/05/22.
//

import SwiftUI

@main
struct MojiMokuApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}

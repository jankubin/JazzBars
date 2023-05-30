//
//  JazzBarsPragueApp.swift
//  JazzBarsPrague
//
//  Created by Jan Kubín on 27.04.2023.
//

import SwiftUI

@main
struct JazzBarsPragueApp: App {
    
    @StateObject private var vm = LocationViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationView()
                .environmentObject(vm)
        }
    }
}

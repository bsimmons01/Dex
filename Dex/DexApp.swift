//
//  DexApp.swift
//  Dex
//
//  Created by Brian Simmons on 3/6/25.
//

import SwiftUI
import SwiftData

@main
struct DexApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Pokemon.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
        
        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(sharedModelContainer)
        }
    }
}

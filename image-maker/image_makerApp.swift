//
//  image_makerApp.swift
//  image-maker
//
//  Created by Robert Brennan on 2/24/24.
//

import SwiftUI

@main
struct image_makerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

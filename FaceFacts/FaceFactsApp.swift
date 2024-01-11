//
//  FaceFactsApp.swift
//  FaceFacts
//
//  Created by Tiago Miguel de Jesus Romao on 07/01/2024.
//

import SwiftUI

@main
struct FaceFactsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Person.self)
    }
}

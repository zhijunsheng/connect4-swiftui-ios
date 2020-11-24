//
//  Connect4App.swift
//  Connect4
//
//  Created by Golden Thumb on 2020-11-10.
//

import SwiftUI

@main
struct Connect4App: App {
    var body: some Scene {
        WindowGroup {
            let conn4VM = ConnnectFourViewModel()
            ConnnectFourView(conn4VM: conn4VM)
        }
    }
}

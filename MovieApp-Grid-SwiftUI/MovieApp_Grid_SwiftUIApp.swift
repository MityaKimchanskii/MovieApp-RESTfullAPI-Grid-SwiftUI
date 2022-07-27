//
//  MovieApp_Grid_SwiftUIApp.swift
//  MovieApp-Grid-SwiftUI
//
//  Created by Mitya Kim on 7/26/22.
//

import SwiftUI

@main
struct MovieApp_Grid_SwiftUIApp: App {
    
    @State var store = MovieStore()
    
    var body: some Scene {
        WindowGroup {
            ContentView(store: store)
        }
    }
}

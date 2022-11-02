//
//  MenoApp.swift
//  Meno
//
//  Created by Giulio Ammendola on 24/10/2022.
//

import SwiftUI

@main
struct MenoApp: App {
    
//    init() {
//        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor.orange]
//    }
    
    @ObservedObject var tripViewModel = TripViewModel()
    
    var body: some Scene {
        WindowGroup {
//            SplashScreenView()
             ContentView().environmentObject(tripViewModel)
//            ContentView()
        }
    }
}

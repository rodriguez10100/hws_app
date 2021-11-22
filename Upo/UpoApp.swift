//
//  UpoApp.swift
//  Upo
//
//  Created by Miguel Rodriguez on 9/28/21.
//

import SwiftUI

@main
struct UpoApp: App {
    
    @StateObject var dataController: DataController
    
    init(){
        let dataController = DataController()
        _dataController = StateObject(wrappedValue: dataController)
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
                .environmentObject(dataController)
        }
    }
}

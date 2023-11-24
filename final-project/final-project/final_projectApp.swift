//
//  final_projectApp.swift
//  final-project
//
//  Created by Grace Ku on 11/24/23.
//

import SwiftUI

@main
struct final_projectApp: App {
    var body: some Scene {
        WindowGroup {
            ReminderListView(vm: ReminderListViewModel())
        }
    }
}

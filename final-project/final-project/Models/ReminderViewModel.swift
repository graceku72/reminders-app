//
//  ReminderViewModel.swift
//  final-project
//
//  Created by Grace Ku on 11/24/23.
//

import Foundation

class ReminderViewModel: ObservableObject, Identifiable {
    @Published var model: Reminder

    init(model: Reminder) {
        self.model = model
    }
    
    var name: String {
        model.name
    }
    
    var isDone: Bool {
        model.isDone
    }
    
    var id: UUID {
        model.id
    }
    
    func toggleIsDone() {
        model.isDone = !model.isDone
    }
    
    func updateName(_ newName: String) {
        model.name = newName
    }
}

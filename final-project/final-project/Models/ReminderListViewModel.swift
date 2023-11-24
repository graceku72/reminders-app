//
//  ReminderListViewModel.swift
//  final-project
//
//  Created by Grace Ku on 11/24/23.
//

import Foundation

class ReminderListViewModel: ObservableObject {
    @Published var reminders: [Reminder]
    
    init(reminders: [Reminder] = []) {
        self.reminders = reminders
    }
    
    func addReminder(name: String) {
        let newReminder = Reminder(name: name)
        self.reminders.append(newReminder)
    }
    
//    func updateReminders() -> [Reminder] {
//        self.reminders = self.reminders.filter { !$0.isDone }
//        return self.reminders
//    }
}

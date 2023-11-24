//
//  ReminderView.swift
//  final-project
//
//  Created by Grace Ku on 11/24/23.
//

import SwiftUI

struct ReminderView: View {
    @StateObject var vm: ReminderViewModel
    
    var body: some View {
        HStack(spacing: 8) {
            Button {
                vm.toggleIsDone()
            } label: {
                Image(systemName: vm.isDone ? "circle.circle.fill" : "circle")
                    .font(.title2)
                    .foregroundStyle(vm.isDone ? .pink : .gray)
                    .foregroundColor(vm.isDone ? .pink : .white)
            }
            Text("\(vm.name)")
                .foregroundColor(vm.isDone ? .gray : .black)
        }
    }
}

#Preview {
    ReminderView(vm: ReminderViewModel(model: Reminder(name: "Sample Reminder")))
}

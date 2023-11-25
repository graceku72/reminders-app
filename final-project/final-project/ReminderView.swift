//
//  ReminderView.swift
//  final-project
//
//  Created by Grace Ku on 11/24/23.
//

import SwiftUI

struct ReminderView: View {
    @StateObject var vm: ReminderViewModel
    @State private var isEditing = false
    @State private var editedName = ""
    @FocusState private var itemFocus: Bool

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

            if isEditing {
                TextField("", text: $editedName, onCommit: {
                    vm.updateName(editedName)
                    isEditing = false
                    itemFocus = false
                })
                .foregroundColor(.black)
                .focused($itemFocus)
            } else {
                Text(vm.name)
                    .foregroundColor(vm.isDone ? .gray : .black)
                    .onTapGesture {
                        isEditing = true
                        itemFocus = true
                        editedName = vm.name
                    }
            }
        }
    }
}



#Preview {
    ReminderView(vm: ReminderViewModel(model: Reminder(name: "Sample Reminder")))
}

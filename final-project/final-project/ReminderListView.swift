//
//  ReminderListView.swift
//  final-project
//
//  Created by Grace Ku on 11/24/23.
//

import SwiftUI

struct ReminderListView: View {
    @StateObject var vm: ReminderListViewModel
    @State private var input = ""
    @State private var isAddingReminder = false
    @FocusState private var inputFocus: Bool

    var body: some View {
        VStack(alignment: .leading) {
            Text("Reminders")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(.pink)
                .bold()
                .padding()
            
            List {
                ForEach(vm.reminders) { reminder in
                    ReminderView(vm: ReminderViewModel(model: reminder))
                }
                
                if isAddingReminder {
                    TextField("", text: $input, onCommit: {
                        if !input.isEmpty {
                            vm.addReminder(name: input)
                        }
                        isAddingReminder = false
                        inputFocus = false
                        input = ""
                    })
                    .focused($inputFocus)
                    .padding()
                }
            }
            .listStyle(InsetListStyle())
            
            HStack {
                Button(action: {
                    isAddingReminder.toggle()
                    if isAddingReminder {
                        inputFocus = true
                    }
                }) {
                    Image(systemName: "plus.circle.fill")
                        .foregroundColor(.pink)
                        .font(.title2)
                    Text("New Reminder")
                        .foregroundColor(.pink)
                        .fontWeight(.semibold)
                }
                .padding()
            }
        }
        .onChange(of: isAddingReminder) { _ in
            if !isAddingReminder {
                input = ""
            }
        }
    }
}

#Preview {
    ReminderListView(vm: ReminderListViewModel())
}

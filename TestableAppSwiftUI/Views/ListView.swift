//
//  ListView.swift
//  TestableAppSwiftUI
//
//  Created by Dmytro Mazalov on 21.09.2025.
//

import SwiftUI

private enum ListField: Hashable {
    case note
}

struct ListView: View {
    @State private var notes: [String] = []
    @State private var newNote: String = ""
    
    @FocusState private var focusedField: ListField?
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("New note", text: $newNote)
                        .focused($focusedField, equals: .note)
                        .onSubmit { focusedField = nil }
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .accessibilityIdentifier("noteField")
                    Button("Add") {
                        focusedField = nil
                        guard !newNote.isEmpty else { return }
                        notes.append(newNote)
                        newNote = ""
                    }
                    .padding()
                    .accessibilityIdentifier("addNoteButton")
                }
                .padding()
                
                List(notes, id: \.self) { note in
                    Text(note)
                        .accessibilityIdentifier("noteRow_\(note)")
                }
            }
            .navigationTitle("Notes")
            .scrollDismissesKeyboard(.interactively)
            .onTapGesture { focusedField = nil }
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button("Done") { focusedField = nil }
                        .padding()
                }
            }
        }
    }
}

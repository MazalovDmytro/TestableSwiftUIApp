//
//  FormView.swift
//  TestableAppSwiftUI
//
//  Created by Dmytro Mazalov on 21.09.2025.
//

import SwiftUI

private enum FormField: Hashable {
    case name
}

struct FormView: View {
    @State private var name: String = ""
    @State private var age: Int = 18
    @State private var subscribed: Bool = false
    @State private var savedUser: UserModel?

    @FocusState private var focusedField: FormField?

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("User Info")) {
                    TextField("Enter your name", text: $name)
                        .focused($focusedField, equals: .name)
                        .submitLabel(.done) 
                        .onSubmit { focusedField = nil }
                        .accessibilityIdentifier("nameField")

                    Stepper("Age: \(age)", value: $age, in: 0...120)
                        .accessibilityIdentifier("ageStepper")

                    Toggle("Subscribe", isOn: $subscribed)
                        .accessibilityIdentifier("subscribeToggle")
                }

                Button("Save") {
                    focusedField = nil
                    savedUser = UserModel(name: name, age: age, subscribed: subscribed)
                }
                .accessibilityIdentifier("saveButton")

                if let user = savedUser {
                    Text("Saved: \(user.name), \(user.age), Subscribed: \(user.subscribed.description)")
                        .accessibilityIdentifier("resultText")
                }
            }
            .navigationTitle("Form")
            .scrollDismissesKeyboard(.interactively)
            .onTapGesture { focusedField = nil }
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button("Done") { focusedField = nil }
                }
            }
        }
    }
}

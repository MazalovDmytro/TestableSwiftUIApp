//
//  MainTabView.swift
//  TestableAppSwiftUI
//
//  Created by Dmytro Mazalov on 21.09.2025.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            FormView()
                .tabItem {
                    Label("Form", systemImage: "person.crop.circle")
                }
            
            ListView()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
        }
    }
}

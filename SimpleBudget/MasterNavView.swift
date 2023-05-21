//
//  MasterNavView.swift
//  SimpleBudget
//
//  Created by Taha Tuna
//

import SwiftUI

struct MasterNavView: View {
    var body: some View {
        TabView {
            ExpenseView() //MARK: Turn into History View
                .tabItem {
                    Label("History", systemImage: "clock.fill")
                }.badge(3)
            
            ExpenseView()
                .tabItem {
                    Label("Expense", systemImage: "creditcard.fill")
                }
            
            ExpenseView() //MARK: Turn into Account View
                .tabItem {
                    Label("Account", systemImage: "person.crop.circle.fill")
                }
        }
    }
}

struct MasterNavView_Previews: PreviewProvider {
    static var previews: some View {
        MasterNavView()
    }
}

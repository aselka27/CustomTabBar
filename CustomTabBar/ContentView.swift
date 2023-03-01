//
//  ContentView.swift
//  CustomTabBar
//
//  Created by саргашкаева on 1.03.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tabSelection: TabBarItem = .home
   
    var body: some View {
        CustomTabBarContainerView(selection: $tabSelection) {
            Color.blue
                .tabBarItem(tab: .home, selection: $tabSelection)
            Color.red
                .tabBarItem(tab: .favorites, selection: $tabSelection)
            Color.green
                .tabBarItem(tab: .profile, selection: $tabSelection)
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}

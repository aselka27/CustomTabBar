//
//  CustomTabBarContainerView.swift
//  CustomTabBar
//
//  Created by саргашкаева on 1.03.2023.
//

import SwiftUI

struct CustomTabBarContainerView <Content:View>: View {
    
    @Binding var selection: TabBarItem
    let content: Content
    @State private var tabs: [TabBarItem] = []
    
    init(selection: Binding<TabBarItem>, @ViewBuilder content: () -> Content) {
        self._selection = selection
        self.content = content()
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
                content
                .ignoresSafeArea()
            CustomTabBarView(localSelection: selection, tabs: tabs, selection: $selection)
            }
        .onPreferenceChange( TabBarItemsPreferenceKey.self) { value in
            self.tabs = value
        }
    }
}

//struct CustomTabBarContainerView_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomTabBarContainerView()
//    }
//}

//
//  CustomTabBar.swift
//  iosApp
//
//  Created by Admin on 11.03.2023.
//  Copyright © 2023 orgName. All rights reserved.
//

import SwiftUI

enum Tab: String, CaseIterable{
    case house
    case cart
    case tray
    case person
}


struct CustomTabBar: View {
    @Binding var selectedTab: Tab
    private var fillImage: String {
        selectedTab.rawValue + ".fill"
    }
    
    private var tabColor: Color {
        switch selectedTab {
        case .house:
            return .blue
        case .cart:
            return .green
        case .tray:
            return .blue
        case .person:
            return .orange
        }
    }
    
    var body: some View {
        VStack {
            if #available(iOS 15.0, *) {
                HStack {
                    ForEach(Tab.allCases, id: \.rawValue) {tab in
                        Spacer()
                        Image(systemName: selectedTab == tab ? fillImage:
                            tab.rawValue)
                            .scaleEffect(tab == selectedTab ? 1.25 : 1.0)
                            .foregroundColor(tab == selectedTab ? tabColor : .gray)
                            .font(.system(size: 22))
                            .onTapGesture {
                                withAnimation(.easeIn(duration: 0.1)) {
                                    selectedTab = tab
                                }
                            }
                        Spacer()
                    }
                }
                .frame(width: nil, height: 60)
                .background(.thinMaterial)
                .cornerRadius(10)
                .padding()
            } else {
                HStack {
                    ForEach(Tab.allCases, id: \.rawValue) {tab in
                        Spacer()
                        Image(systemName: selectedTab == tab ? fillImage:
                            tab.rawValue)
                            .scaleEffect(tab == selectedTab ? 1.25 : 1.0)
                            .foregroundColor(tab == selectedTab ? tabColor : .gray)
                            .font(.system(size: 22))
                            .onTapGesture {
                                withAnimation(.easeIn(duration: 0.1)) {
                                    selectedTab = tab
                                }
                            }
                    
                        Spacer()
                    }
                }
                .frame(width: nil, height: 60)
                .background(Color.white)
                .cornerRadius(10)
                .padding()
            }
        }
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar(selectedTab: .constant(.house))
    }
}

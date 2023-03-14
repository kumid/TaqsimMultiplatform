//
//  Content-ViewModel.swift
//  iosApp
//
//  Created by Admin on 14.03.2023.
//  Copyright © 2023 orgName. All rights reserved.
//

import Foundation
import SwiftUI

extension Cart {
    final class ViewModel: ObservableObject {
        @Published var items = [Item]()
        @Published var showingFavs = false
        @Published var savedItems: Set<Int> = [1, 7]
        var filteredItems: [Item] {
            if showingFavs {
                return items.filter{savedItems.contains($0.id)}
            } else {
                return items
            }
        }
        private var db = Database()
        
        init() {
//            self.savedItems = db.load()
            self.items = Item.sampleItems
        }
        
        func sortFavs() {
            withAnimation{
                showingFavs.toggle()
            }
        }
        
        func contains(_ item: Item) -> Bool {
            savedItems.contains((item.id))
        }
        
        func toggleFav(item: Item) {
            if contains(item) {
                savedItems.remove(item.id)
            } else {
                savedItems.insert(item.id)
            }
            db.save(items: savedItems)
        }
    }
}

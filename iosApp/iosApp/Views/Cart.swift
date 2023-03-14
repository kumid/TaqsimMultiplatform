//
//  Cart.swift
//  iosApp
//
//  Created by Admin on 14.03.2023.
//  Copyright © 2023 orgName. All rights reserved.
//

import SwiftUI

struct Cart: View {
    @StateObject private var vm = ViewModel()
    
    var body: some View{
        VStack {
            Button("Toggle Favorites", action: vm.sortFavs)
                .padding()
            
            List {
                ForEach(vm.filteredItems) { item in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(item.title)
                                .font(.headline)
                            Text(item.description)
                                .font(.subheadline)
                        }
                        Spacer()
                        Image(systemName: vm.contains(item) ?
                              "heart.fill" : "heart")
                            .foregroundColor(.red)
                            . onTapGesture {
                                vm.toggleFav(item: item)
                            }
                    }
                }
            }
            .cornerRadius(10)
        }
    }
}
    




struct Cart_Previews: PreviewProvider {
    static var previews: some View {
        Cart()
    }
}

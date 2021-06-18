//
//  FruitDetailView.swift
//  FruitsApp
//
//  Created by Yaz Burrell on 6/18/21.
//

import SwiftUI

struct FruitDetailView: View {
    // MARK: - PROPERTIES
    
    var fruit: Fruit
    
    // MARK: - BODY
    var body: some View {
        Text(fruit.title)
    }
}

// MARK: - PREVIEW

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
            .previewDevice("iPhone 11")
    }
}

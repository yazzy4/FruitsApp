//
//  SettingsLabelView.swift
//  FruitsApp
//
//  Created by Yaz Burrell on 6/21/21.
//

import SwiftUI

struct SettingsLabelView: View {
    // MARK: - PROPERTIES
    
    var labelText: String
    var labelImage: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

// MARK: - PREVIEW


struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fruit App", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

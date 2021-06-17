//
//  OnboardingView.swift
//  FruitsApp
//
//  Created by Yaz Burrell on 6/17/21.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    
    var body: some View {
        TabView {
            FruitCardView()
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)

    }
}

// MARK: - PREVIEW

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

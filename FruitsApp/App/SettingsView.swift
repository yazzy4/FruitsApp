//
//  SettingsView.swift
//  FruitsApp
//
//  Created by Yaz Burrell on 6/21/21.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: BODY
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - SECTION 1
                    GroupBox(
                        label:
                    SettingsLabelView(labelText: "Fruit App", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                        
                    }
                    
                    // MARK: - SECTION 2
                    
                    
                    // MARK: - SECTION 3
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ) {

                        SettingsRowView(name: "Developer", content: "John / Jane")
                        SettingsRowView(name: "Designer", content: "Tutorial")
                        SettingsRowView(name: "Compatibility", content: "iOS 14.6")
                        SettingsRowView(name: "Website", linkLabel: "Github", linkDestination: "github.com/yazzy4/FruitsApp")
                        SettingsRowView(name: "Instagram", linkLabel: "@billyretriever", linkDestination: "instagram.com/billyretriever")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content:  "1.1.0")

                    } //: BOX
                    
                } //: VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                })  {
                    Image(systemName: "xmark")
                    }
                )
                .padding()
            } //: SCROLL
        } //: NAVIGATION
    }
}

// MARK: -PREVIEW

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 11")
    }
}

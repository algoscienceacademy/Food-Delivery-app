//
//  Tab.swift
//  Food_Delivery_App_Template
//
//  Created by Shahrear Hossain on 14/4/24.
//

import SwiftUI

struct TabItem: Identifiable {
    var id = UUID()
    var text: String
    var icon: String
    var tab: Tab
    var color: Color
    
    
}
var tabItems = [

    TabItem(text: "Manu", icon: "house", tab: .home , color: .teal),
    TabItem(text: "Phone", icon: "phone", tab: .explore , color: .blue),
    TabItem(text: "Order",icon:"bell", tab: .notification , color: .red),
    TabItem(text: "Profile", icon: "person", tab: .person , color: .purple)
    

]



enum Tab: String {
    
    case home
    case explore
    case notification
    case person
}

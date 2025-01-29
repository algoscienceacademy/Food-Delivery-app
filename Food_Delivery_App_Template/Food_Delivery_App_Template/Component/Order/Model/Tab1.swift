//
//  Tab1.swift
//  Food_Delivery_App_Template
//
//  Created by Shahrear Hossain on 17/4/24.
//

import SwiftUI

///Tab

enum Tab1: String, CaseIterable{
    case ongoing = "Ongoing"
    case history  = "History"
    case settings = "Settings"
    
    
    var systemImage: String {
        switch self {
        case .history:
            return "2.circle"
        case .ongoing:
            return "1.circle"
        case .settings:
            return "3.circle"
        }
    }
}

//
//  Main_Tab_View.swift
//  Food_Delivery_App_Template
//
//  Created by Shahrear Hossain on 8/4/24.
//

import SwiftUI

struct Main_Tab_View: View {
    @State var selectedTab: Tab = .home
    @State var color: Color = .teal
    var body: some View {
        ZStack(alignment: .bottom){
            Group {
                switch selectedTab {
                case .home:
                    Home_V_1()
                case .explore:
                    Delivery_Man_Call_screen()
                case .notification:
                    My_Order_01(numberOfProducts: 1)
                case .person:
                    Profile()

                }
            }
            .frame(maxWidth: .infinity,maxHeight: .infinity)
            HStack{
                ForEach(tabItems) { item in
                    Button(action: {
                        withAnimation{
                            selectedTab = item.tab
                            color = item.color
                        }
                        
                    }, label: {
                        VStack() {
                            
                            Image(systemName: item.icon)
                               .symbolVariant(.fill)
                                .font(.body.bold())
                                .frame(width:44, height: 29)
                            Text(item.text)
                                .font(.caption2)
                                .lineLimit(1)
                        }
                        .frame(maxWidth: .infinity)
                        
                    }
                    
                
                    
                    )
                   .foregroundStyle(selectedTab == item.tab ? .primary : .secondary)
                    .blendMode(selectedTab == item.tab ? .overlay : .normal)
                 }
                    
            }
            
            .padding(.horizontal, 8)
            .padding(.top,14)
            .frame( height: 88, alignment: .top)
            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 34,  style: .continuous)
                
            )
            .background(
                HStack {
                    if selectedTab == .person { Spacer()}
                    if selectedTab == .explore { Spacer()}
                    if selectedTab == .notification
                    {   Spacer()
                        Spacer()
                    }
                    Circle().fill(color).frame(width:88)
                    if selectedTab == .home { Spacer()}
                    if selectedTab == .explore
                    {   Spacer()
                        Spacer()
                    }
                    if selectedTab == .notification {Spacer()}
                }
                    .padding(.horizontal,8)
            )
            .overlay(
                HStack {
                    if selectedTab == .person { Spacer()}
                    if selectedTab == .explore { Spacer()}
                    if selectedTab == .notification
                    {   Spacer()
                        Spacer()
                    }
                    Rectangle()
                        .fill(color)
                        .frame(width:35, height:5)
                        .cornerRadius(3)
                        .frame(width: 88)
                        .frame(maxHeight:.infinity, alignment:.top)
                    if selectedTab == .home { Spacer()}
                    if selectedTab == .explore
                    {   Spacer()
                        Spacer()
                    }
                    if selectedTab == .notification {Spacer()}
                }
                    .padding(.horizontal,8)
            )
            .frame(maxHeight: .infinity, alignment: .bottom)
            .ignoresSafeArea()
            
        }
    }
}

#Preview {
NavigationView{
        Main_Tab_View()
    }
}

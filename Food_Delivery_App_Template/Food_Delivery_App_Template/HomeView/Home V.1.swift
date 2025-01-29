//
//  Home V.1.swift
//  Food_Delivery_App_Template
//
//  Created by Shahrear Hossain on 8/4/24.
//

import SwiftUI

struct Home_V_1: View {
    @State private var search: String = ""
    var body: some View {
            VStack{
                LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                    .overlay(
                        ZStack{
                            Circle()
                                .frame(width: 300)
                                .foregroundColor(.blue.opacity(0.5))
                                .blur(radius: 10)
                                .offset(x:-250,y:-200)
                            Circle()
                                .frame(width: 300)
                                .foregroundColor(.blue.opacity(0.5))
                                .blur(radius: 10)
                                .offset(x:250,y:-300)
                            RoundedRectangle(cornerRadius: 15)
                                .frame(width: .infinity,height: 300)
                                .foregroundStyle(LinearGradient(colors: [Color.green.opacity(0.3),Color.blue.opacity(0.7)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                .blur(radius: 10)
                                .rotationEffect(.degrees(30))
                                .offset(x:90,y:400)
                            
                            VStack(spacing: 15){
                                NavigationLink{
                                    My_Card()
                                } label: {
                                    ManuTopBar(numberOfProducts: 1)
                                }
                               
                                
                                HStack{
                                    Text("Hey Fatiha,")
                                    Text("Good Afternoon!")
                                        .font(.title3.bold())
                                }
                                .offset(y:-20)
                                
                                VStack{
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(Color.black, lineWidth: 2)
                                        .fill(LinearGradient(colors: [Color.green.opacity(0.3),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                        .frame(width: 370,height: 65)
                                        .overlay(
                                            HStack{
                                                TextField("Search dishes, Restaurants", text: $search)
                                                    .offset(x: 10)
                                                Image(systemName: "magnifyingglass")
                                                //.foregroundColor(.gray)
                                                    .font(.system(size: 25))
                                                    .offset(x:-20)
                                                
                                            }
                                            
                                        )
                                        .padding(.vertical,-45)
                                }
                                .offset(y: 30)
                                
                                HStack(spacing: 150){
                                    HStack{
                                        Text("All Categories")
                                            .font(.title2.bold())
                                    }
                                    
                                    
                                    
                                    HStack{
                                        Text("See All")
                                        Image(systemName: "chevron.right")
                                    }
                                }
                                .offset(y: 60)
                                Spacer()
                                    .padding(.horizontal)
                                HStack{
                                    HCardView()
                                    
                                    
                                    
                                }
                                .offset(y:-100)
                            
                                    HStack(spacing: 150){
                                        HStack{
                                            Text("All Restaurent")
                                                .font(.title2.bold())
                                        }
                                        
                                        
                                        
                                        HStack{
                                            Text("See All")
                                            Image(systemName: "chevron.right")
                                        }
                                    }
                                     .offset(y:-120)
                                ScrollView(showsIndicators: false){
                                VStack{
                                    VStack{
                                        VCardView()
                                    }
                                    .padding(.horizontal)
                                    
                                    // .scrollClipDisabled()
                                    
                                }
                                
                            }
                            .padding(.vertical,-150)
                            .offset(y:30)
                               
                            
                            }
                            
                        
                        
                    }
                
               
                    
            )
                        
        }
        
    }
}

#Preview {
    NavigationView {
        Home_V_1()
    }
}

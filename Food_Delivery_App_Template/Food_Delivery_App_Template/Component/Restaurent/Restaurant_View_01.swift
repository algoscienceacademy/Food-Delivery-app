//
//  Restaurant_View_01.swift
//  Food_Delivery_App_Template
//
//  Created by Shahrear Hossain on 8/4/24.
//

import SwiftUI

struct Restaurant_View_01: View {
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
                        VStack(spacing:15){
                            HStack{
                                Button  (action:{
                                    
                                },label: {
                                    Circle()
                                        .stroke(Color.black,lineWidth: 2)
                                        .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                        .frame(width:40)
                                        .overlay(
                                            Image(systemName: "chevron.backward")
                                                .foregroundColor(.black)
                                        )
                                })
                                Spacer()
                            }
                           .font(.title2)
                            .overlay {
                                Text("Restaurant")
                                    .foregroundColor(.black)
                                    .font(.title3.bold())
                            }
                            .foregroundStyle(.primary)
                            .padding(15)
                            VStack{
                               
                                        VStack{
                                            Image("picture5")
                                                .resizable()
                                                .shadow(radius: 10)
                                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                            //.scaledToFit()
                                                .frame(width:350,height: 150)
                                               // .offset(y:-45)
                                            VStack{
                                                VStack(alignment:.leading){
                                                    Text("Rose Gorden Restaurant")
                                                        .foregroundColor(.white)
                                                        .font(.title2.bold())
                                                    Text("Maecenas sed diam eget risus varius blandit sit amet non magna. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.")
                                                        .font(.caption)
                                                        .multilineTextAlignment(.center)
                                                    .foregroundColor(.gray.opacity(0.9))
                                                        .font(.footnote)
                                                }
                                                HStack(spacing:30){
                                                    HStack{
                                                        Image("Star")
                                                            .renderingMode(.template)
                                                            .foregroundColor(.orange)
                                                        Text("4.7")
                                                            .font(.footnote)
                                                    }
                                                    HStack{
                                                        Image("Car")
                                                            .renderingMode(.template)
                                                            .foregroundColor(.orange)
                                                        Text("Free")
                                                    }
                                                    HStack{
                                                        Image("Watch")
                                                            .renderingMode(.template)
                                                            .foregroundColor(.orange)
                                                        Text("20 min")
                                                    }
                                                }
                                            }
                                           
                                         
                                        }
                                        .padding()
                                        .frame(width:380,height: 300)
                                        .background(.ultraThinMaterial)
                                        .cornerRadius(30)
                                
                                        
                                    
                            }
                            VStack{
                                HStack(spacing: 150){
                                    HStack{
                                        Text("Manu Items")
                                            .font(.title2.bold())
                                    }
                                    
                                    
                                    
                                    HStack{
                                        Text("See All")
                                        Image(systemName: "chevron.right")
                                    }
                                }
                                //.offset(y: 60)
                                Spacer()
                                    .padding(.horizontal)
                                VStack{
                                    HCardView()
                                    
                                    
                                    
                                }
                                .offset(y:-80)
                            }
                    }
                }
            )
        }
    }
}

#Preview {
    Restaurant_View_01()
}

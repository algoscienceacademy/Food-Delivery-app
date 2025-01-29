//
//  Delivery_Man_Call_screen.swift
//  Food_Delivery_App_Template
//
//  Created by Shahrear Hossain on 8/4/24.
//

import SwiftUI

struct Delivery_Man_Call_screen: View {
    var body: some View {
        VStack{
            Image("picture1")
                .resizable()
                .ignoresSafeArea()
                .overlay(
                    VStack{
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
                            // Button  (action:{
                            
                            //  },label: {
                            
                            
                            
                        }
                        .font(.title2)
                        .overlay {
                            Text("Call")
                                .foregroundColor(.white)
                                .font(.title3.bold())
                        }
                        .foregroundStyle(.primary)
                        .padding(15)
                        Spacer()
                        VStack{
                            VStack{
                                Image("picture1")
                                    .resizable()
                                    .frame(width:100,height: 100)
                                    .clipShape(Circle())
                                    .shadow(radius: 10)
                                Text("Fatiha Omor")
                                    .bold()
                                Text("Connecting.......")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                            .offset(y:-80)
                            HStack{
                                Circle()
                                   .stroke(Color.black,lineWidth: 2)
                                    .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                    .frame(width:40)
                                
                                    .overlay(
                                        Image(systemName: "mic.slash")
                                            .foregroundColor(.black)
                                    )
                                    .offset(x:-50)
                                Circle()
                                    .stroke(Color.black,lineWidth: 2)
                                    .fill(LinearGradient(colors: [Color.red.opacity(0.4),Color.pink.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                    .frame(width:70)
                                    .shadow(color:Color.red,radius: 20)
                                    .overlay(
                                        Image(systemName: "phone")
                                            .font(.system(size: 30))
                                            .foregroundColor(.white)
                                    )
                                    
                                    .offset(y:-40)
                                Circle()
                                    .stroke(Color.black,lineWidth: 2)
                                    .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                    .frame(width:40)
                                    .overlay(
                                        Image(systemName: "speaker.wave.1")
                                            .foregroundColor(.black)
                                    )
                                    .offset(x:50)
                            }
                            
                        }
                        .frame(width:440,height: 400)
                        .background(.ultraThickMaterial)
                        .cornerRadius(30)
                        .offset(y:40)
                    }
                )
        }
    }
}

#Preview {
    Delivery_Man_Call_screen()
}

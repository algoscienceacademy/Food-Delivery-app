//
//  Personal_Profile.swift
//  Food_Delivery_App_Template
//
//  Created by Shahrear Hossain on 8/4/24.
//

import SwiftUI

struct Personal_Info: View {
    var body: some View {
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
                        .overlay(
                            RoundedRectangle(cornerRadius: 45)
                                .stroke(Color.black, lineWidth: 2)
                                .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                .frame(width: 350,height: 500)
                        .overlay(
                    VStack{
                        
                            HStack(spacing: 50){
                                        Image("picture1")
                                            .resizable()
                                            .scaledToFit()
                                            .clipShape(Circle())
                                            .frame(width:85)
                                        VStack(alignment:.center){
                                            Text("Fatiha Omor")
                                                .bold()
                                                .font(.system(size: 30))
                                                .foregroundColor(.white)
                                            Text("I love fast food")
                                                .font(.footnote)
                                                .foregroundColor(.gray)
                                            
                                        }
                                    }
                            .offset(y:-50)
                        
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.black, lineWidth: 2)
                            .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                            .frame(width: 340,height: 200)
                            .overlay(
                                    VStack{
                                        
                                        HStack(spacing: 30){
                                                Circle()
                                                    //.stroke(Color.black,lineWidth: 1)
                                                
                                                    .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                                    .frame(width:40)
                                                    .overlay(
                                                        Image(systemName: "person")
                                                            .foregroundColor(.orange)
                                                    )
                                            VStack(alignment:.leading){
                                                Text("Full Name")
                                                        .font(.system(size: 25))
                                                        .foregroundColor(.white)
                                                Text("Fatiha Omar")
                                                        .font(.footnote)
                                            }
                                            
                                        }
                                        .offset(x:-70)
                                    
                                        HStack(spacing: 30){
                                                Circle()
                                                    //.stroke(Color.black,lineWidth: 1)
                                                
                                                    .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                                    .frame(width:40)
                                                    .overlay(
                                                        Image(systemName: "envelope")
                                                            .foregroundColor(.purple)
                                                    )
                                            VStack(alignment:.leading){
                                                Text("Email")
                                                        .font(.system(size: 25))
                                                        .foregroundColor(.white)
                                                Text("hello@shahrear")
                                                        .font(.footnote)
                                            }
                                            
                                        }
                                        .offset(x:-75)
                                        HStack(spacing: 30){
                                                Circle()
                                                    //.stroke(Color.black,lineWidth: 1)
                                                
                                                    .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                                    .frame(width:40)
                                                    .overlay(
                                                        Image(systemName: "phone")
                                                            .foregroundColor(.green)
                                                    )
                                            VStack(alignment:.leading){
                                                Text("Phone Number")
                                                        .font(.system(size: 25))
                                                        .foregroundColor(.white)
                                                Text("+880-01859492439")
                                                        .font(.footnote)
                                            }
                                            
                                        }
                                        .offset(x:-40)                                }
                                
                            )
                            .offset(y:-40)
                           
                        Button(action: {
                            
                        }, label: {
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.black,lineWidth: 2)
                                .fill(LinearGradient(colors: [Color.orange.opacity(0.3),Color.green.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                .frame(width: 300,height: 60)
                                .overlay(
                                    Text("Edit")
                                        .foregroundColor(.black)
                                        .fontWeight(.semibold)
                                    
                                )
                        })
                        .offset(y:-10)
                    }
                  )
                )
                }
            )
            .navigationTitle("Personal Info")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationView{
        Personal_Info()
    }
}

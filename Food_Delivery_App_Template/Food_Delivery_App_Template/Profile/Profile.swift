//
//  Profile.swift
//  Food_Delivery_App_Template
//
//  Created by Shahrear Hossain on 14/4/24.
//

import SwiftUI

struct Profile: View {
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
                    ScrollView(showsIndicators: false)
                    {
                        
                        VStack{
                            NavigationLink {
                                Edit_Profile()
                            } label: {
                                VStack{
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.black, lineWidth: 2)
                                        .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                        .frame(width: 369,height: 100)
                                        .overlay(
                                            HStack(spacing: 100){
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
                                            })
                                }
                            }
                        

                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.black, lineWidth: 2)
                            .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                            .frame(width: 369,height: 150)
                            .overlay(
                                VStack{
                                    NavigationLink {
                                        Personal_Info()
                                    } label: {
                                        HStack(spacing: 170){
                                            HStack{
                                                Circle()
                                                    .stroke(Color.black,lineWidth: 1)
                                                
                                                    .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                                    .frame(width:40)
                                                    .overlay(
                                                        Image(systemName: "person")
                                                            .foregroundColor(.orange)
                                                    )
                                                Text(" Personal Info")
                                                    .foregroundColor(.black)
                                            }
                                            HStack{
                                                Image(systemName: "chevron.right")
                                                    .foregroundColor(.black)
                                            }
                                            
                                        }
                                    }
                                    HStack(spacing: 190){
                                        HStack{
                                            Circle()
                                                .stroke(Color.black,lineWidth: 1)
                                                .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                                .frame(width:40)
                                                .overlay(
                                                    Image(systemName: "map")
                                                        .foregroundColor(.purple)
                                                )
                                            Text(" Addresses")
                                        }
                                        HStack{
                                            Image(systemName: "chevron.right")
                                        }
                                        
                                    }
                                }
                            )
                            
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.black, lineWidth: 2)
                            .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                            .frame(width: 369,height: 230)
                            .overlay(
                                VStack{
                                    NavigationLink {
                                        Restaurant_View_01()
                                    } label: {
                                        HStack(spacing: 235){
                                            HStack{
                                                Circle()
                                                    .stroke(Color.black,lineWidth: 1)
                                                
                                                    .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                                    .frame(width:40)
                                                    .overlay(
                                                        Image(systemName: "bag")
                                                            .foregroundColor(.blue)
                                                    )
                                                Text(" Cart")
                                                    .foregroundColor(.black)
                                            }
                                            HStack{
                                                Image(systemName: "chevron.right")
                                                    .foregroundColor(.black)
                                            }
                                            
                                        }
                                    }
                                    NavigationLink {
                                        Delivery_Man_Call_screen()
                                    } label: {
                                        HStack(spacing: 220){
                                            HStack{
                                                Circle()
                                                    .stroke(Color.black,lineWidth: 1)
                                                    .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                                    .frame(width:40)
                                                    .overlay(
                                                        Image(systemName: "phone")
                                                            .foregroundColor(.pink)
                                                    )
                                                Text(" Phone")
                                                    .foregroundColor(.black)
                                            }
                                            HStack{
                                                Image(systemName: "chevron.right")
                                                    .foregroundColor(.black)
                                            }
                                            
                                        }
                                    }

                                   
                                    HStack(spacing: 170){
                                        HStack{
                                            Circle()
                                                .stroke(Color.black,lineWidth: 1)
                                                .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                                .frame(width:40)
                                                .overlay(
                                                    Image(systemName: "bell")
                                                        .foregroundColor(.yellow)
                                                )
                                            Text(" Notifications")
                                        }
                                        HStack{
                                            Image(systemName: "chevron.right")
                                        }
                                        
                                    }
                                    HStack(spacing: 140){
                                        HStack{
                                            Circle()
                                                .stroke(Color.black,lineWidth: 1)
                                                .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                                .frame(width:40)
                                                .overlay(
                                                    Image(systemName: "creditcard")
                                                        .foregroundColor(.green)
                                                )
                                            Text(" Payment method")
                                        }
                                        HStack{
                                            Image(systemName: "chevron.right")
                                        }
                                        
                                    }
                                }
                            )
                            
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.black, lineWidth: 2)
                            .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                            .frame(width: 369,height: 180)
                            .overlay(
                                VStack{
                                    HStack(spacing: 200){
                                        HStack{
                                            Circle()
                                                .stroke(Color.black,lineWidth: 1)
                                            
                                                .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                                .frame(width:40)
                                                .overlay(
                                                    Image(systemName: "star.circle")
                                                        .foregroundColor(.gray)
                                                )
                                            Text(" Reviews")
                                        }
                                        HStack{
                                            Image(systemName: "chevron.right")
                                        }
                                        
                                    }
                                    
                                    HStack(spacing: 185){
                                        HStack{
                                            Circle()
                                                .stroke(Color.black,lineWidth: 1)
                                                .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                                .frame(width:40)
                                                .overlay(
                                                    Image(systemName: "map")
                                                        .foregroundColor(.purple)
                                                )
                                            Text(" Addresses")
                                        }
                                        HStack{
                                            Image(systemName: "chevron.right")
                                        }
                                        
                                    }
                                    HStack(spacing: 200){
                                        HStack{
                                            Circle()
                                                .stroke(Color.black,lineWidth: 1)
                                                .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                                .frame(width:40)
                                                .overlay(
                                                    Image(systemName: "gear")
                                                        .foregroundColor(.black)
                                                )
                                            Text(" Settings")
                                        }
                                        HStack{
                                            Image(systemName: "chevron.right")
                                        }
                                        
                                    }
                                }
                            )
                            
                        

                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.black, lineWidth: 2)
                            .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                            .frame(width: 370,height: 80)
                            .overlay(
                                NavigationLink(destination: {
                                  Sign_UP()
                                        .navigationBarBackButtonHidden()
                                }, label: {
                                    HStack(spacing: 210){
                                            HStack{
                                                Circle()
                                                    .stroke(Color.black,lineWidth: 1)
                                                
                                                    .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                                    .frame(width:40)
                                                    .overlay(
                                                        Image(systemName: "rectangle.portrait.and.arrow.right")
                                                            .foregroundColor(.orange)
                                                    )
                                                Text(" Log Out")
                                                    .foregroundColor(.black)
                                            }
                                            HStack{
                                                Image(systemName: "chevron.right")
                                            }
                                            
                                        }
                                })
                               
                                )
                           
                                    
                        
                    }
                    .padding(.horizontal,10)
                }
                
                }
                
                  
            )
//            .navigationTitle("Profile")
//            .navigationBarTitleDisplayMode(.inline)
         }
    
        
    }
            



#Preview {
    NavigationStack{
        Profile()
    }
}

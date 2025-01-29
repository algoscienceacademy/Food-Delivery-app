//
//  VCardView.swift
//  Food_Delivery_App_Template
//
//  Created by Shahrear Hossain on 16/4/24.
//

import SwiftUI

struct VCardView: View {
    var body: some View {
        VStack{
            NavigationLink {
                Restaurant_View_01()
            } label: {
                VStack{
                    RoundedRectangle(cornerRadius: 20)
                    // .stroke(Color.black, lineWidth: 2)
                        .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                        .frame(width: 350,height: 200)
                        .overlay(
                            VStack{
                                Image("picture5")
                                    .resizable()
                                    .shadow(radius: 10)
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                                //.scaledToFit()
                                    .frame(width:350,height: 150)
                                //.offset(y:20)
                                
                                VStack{
                                    VStack(alignment:.leading){
                                        Text("Rose Gorden Restaurant")
                                            .foregroundColor(.white)
                                            .font(.title2.bold())
                                        Text("Burger - chiken - Riche - Wings")
                                            .foregroundColor(.gray.opacity(0.9))
                                            .font(.footnote)
                                    }
                                    HStack(spacing:30){
                                        HStack{
                                            Image("Star")
                                                .renderingMode(.template)
                                                .foregroundColor(.orange)
                                            Text("4.7")
                                                .foregroundColor(.black)
                                                .font(.footnote)
                                        }
                                        HStack{
                                            Image("Car")
                                                .renderingMode(.template)
                                                .foregroundColor(.orange)
                                            Text("Free")
                                                .foregroundColor(.black)
                                        }
                                        HStack{
                                            Image("Watch")
                                                .renderingMode(.template)
                                                .foregroundColor(.orange)
                                            Text("20 min")
                                                .foregroundColor(.black)
                                        }
                                    }
                                }
                                
                            }
                                .frame(width:380,height: 250)
                                .background(.ultraThinMaterial)
                                .cornerRadius(30)
                        )
                }
                
            }
            NavigationLink {
                Restaurant_View_01()
            } label: {
                VStack{
                    RoundedRectangle(cornerRadius: 20)
                       // .stroke(Color.black, lineWidth: 2)
                        .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                        .frame(width: 350,height: 200)
                        .overlay(
                            VStack{
                                Image("picture4")
                                    .resizable()
                                    .shadow(radius: 10)
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                                //.scaledToFit()
                                    .frame(width:350,height: 150)
                                   // .offset(y:20)
                                    
                                VStack{
                                    VStack(alignment:.leading){
                                        Text("King Gorden Restaurant")
                                            .foregroundColor(.white)
                                            .font(.title2.bold())
                                        Text("Burger - chiken - Riche - Wings")
                                            .foregroundColor(.gray.opacity(0.9))
                                            .font(.footnote)
                                    }
                                    HStack(spacing:30){
                                        HStack{
                                            Image("Star")
                                                .renderingMode(.template)
                                                .foregroundColor(.orange)
                                            Text("4.8")
                                                .foregroundColor(.black)
                                                .font(.footnote)
                                        }
                                        HStack{
                                            Image("Car")
                                                .renderingMode(.template)
                                                .foregroundColor(.orange)
                                            Text("Paid")
                                                .foregroundColor(.black)
                                        }
                                        HStack{
                                            Image("Watch")
                                                .renderingMode(.template)
                                                .foregroundColor(.orange)
                                            Text("40 min")
                                                .foregroundColor(.black)
                                        }
                                    }
                                }
                                
                            }
                                .frame(width:380,height: 250)
                                .background(.ultraThinMaterial)
                                .cornerRadius(30)
                            
                        )
                }
                .offset(y:50)
            }
            VStack{
            RoundedRectangle(cornerRadius: 20)
                // .stroke(Color.black, lineWidth: 2)
                .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(width: 350,height: 200)
                .overlay(
                    VStack{
                        Image("picture5")
                            .resizable()
                            .shadow(radius: 10)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                        //.scaledToFit()
                            .frame(width:350,height: 150)
                            //.offset(y:20)
                            
                        VStack{
                            VStack(alignment:.leading){
                                Text("Sweets Gorden Restaurant")
                                    .foregroundColor(.white)
                                    .font(.title2.bold())
                                Text("Burger - chiken - Riche - Wings")
                                    .foregroundColor(.gray.opacity(0.9))
                                    .font(.footnote)
                            }
                            HStack(spacing:30){
                                HStack{
                                    Image("Star")
                                        .renderingMode(.template)
                                        .foregroundColor(.orange)
                                    Text("4.2")
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
                                    Text("10 min")
                                }
                            }
                        }
                        
                    }
                        .frame(width:380,height: 250)
                        .background(.ultraThinMaterial)
                        .cornerRadius(30)
                )
        }
            .offset(y:100)
            VStack{
                RoundedRectangle(cornerRadius: 20)
                   // .stroke(Color.black, lineWidth: 2)
                    .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 350,height: 200)
                    .overlay(
                        VStack{
                            Image("picture4")
                                .resizable()
                                .shadow(radius: 10)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                            //.scaledToFit()
                                .frame(width:350,height: 150)
                                //.offset(y:20)
                                
                            VStack{
                                VStack(alignment:.leading){
                                    Text("Rose Gorden Restaurant")
                                        .foregroundColor(.white)
                                        .font(.title2.bold())
                                    Text("Burger - chiken - Riche - Wings")
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
                            .frame(width:380,height: 250)
                            .background(.ultraThinMaterial)
                            .cornerRadius(30)
                        
                    )
            }
            .offset(y:150)
            VStack{
                RoundedRectangle(cornerRadius: 20)
                   // .stroke(Color.black, lineWidth: 2)
                    .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 350,height: 200)
                    .overlay(
                        VStack{
                            Image("picture2")
                                .resizable()
                                .shadow(radius: 10)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                            //.scaledToFit()
                                .frame(width:350,height: 150)
                               // .offset(y:20)
                                
                            VStack{
                                VStack(alignment:.leading){
                                    Text("Rose Gorden Restaurant")
                                        .foregroundColor(.white)
                                        .font(.title2.bold())
                                    Text("Burger - chiken - Riche - Wings")
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
                            .frame(width:380,height: 250)
                            .background(.ultraThinMaterial)
                            .cornerRadius(30)
                    )
            }
            .offset(y:200)
            VStack{
                RoundedRectangle(cornerRadius: 20)
                   // .stroke(Color.black, lineWidth: 2)
                    .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 350,height: 200)
                    .overlay(
                        VStack{
                            Image("picture6")
                                .resizable()
                                .shadow(radius: 10)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                            //.scaledToFit()
                                .frame(width:350,height: 150)
                              //  .offset(y:20)
                                
                            VStack{
                                VStack(alignment:.leading){
                                    Text("Rose Gorden Restaurant")
                                        .foregroundColor(.white)
                                        .font(.title2.bold())
                                    Text("Burger - chiken - Riche - Wings")
                                        .foregroundColor(.gray.opacity(0.9))
                                        .font(.footnote)
                                }
                                HStack(spacing:30){
                                    HStack{
                                        Image("Star")
                                            .renderingMode(.template)
                                            .foregroundColor(.orange)
                                        Text("4.9")
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
                                        Text("5 min")
                                    }
                                }
                            }
                           
                        }
                            .frame(width:380,height: 250)
                            .background(.ultraThinMaterial)
                            .cornerRadius(30)
                    )
            }
            .offset(y:250)
        }
        .offset(y:20)
      
    }
}

#Preview {
    NavigationView{
        VCardView()
    }
}

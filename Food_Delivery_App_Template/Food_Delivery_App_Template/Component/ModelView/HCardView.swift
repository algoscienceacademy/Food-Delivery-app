//
//  HCardView.swift
//  Food_Delivery_App_Template
//
//  Created by Shahrear Hossain on 16/4/24.
//

import SwiftUI

struct HCardView: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
        HStack{
        
                VStack{
                    UnevenRoundedRectangle(
                        topLeadingRadius: 10, bottomLeadingRadius: 10, bottomTrailingRadius: 30, topTrailingRadius: 10, style: .continuous)
                    .stroke(Color.black, lineWidth: 2)
                    .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 180,height: 200)
                    .overlay(
                        VStack{
                            Image("best-burger-in-town")
                                .resizable()
                                .offset(x:-10,y:-30)
                            
                                .shadow(radius: 10)
                            //.scaledToFit()
                                .frame(width:140)
                            VStack(alignment:.leading){
                                Text("Best burger")
                                    .font(.title3.bold())
                                Text("Rose Garden")
                                    .font(.footnote)
                                    .foregroundColor(.white)
                                HStack{
                                    Text("$10")
                                        .offset(y:20)
                                    Circle()
                                        .stroke(Color.black,lineWidth: 2)
                                        .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                        .frame(width:40)
                                        .overlay(
                                            Image(systemName: "plus"))
                                        .offset(x:90,y:20)
                                }
                            }
                            .offset(x:-30,y:-30)
                            
                            
                            
                        }
                    )
                }
               
                VStack{
                    UnevenRoundedRectangle(
                        topLeadingRadius: 10, bottomLeadingRadius: 10, bottomTrailingRadius: 30, topTrailingRadius: 10, style: .continuous)
                    .stroke(Color.black, lineWidth: 2)
                    .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 180,height: 200)
                    .overlay(
                        VStack{
                            Image("beef-cut-close-up")
                                .resizable()
                                .offset(x:-10,y:-30)
                            
                                .shadow(radius: 10)
                            //.scaledToFit()
                                .frame(width:140)
                            VStack(alignment:.leading){
                                Text("Beef Cut")
                                    .font(.title3.bold())
                                Text("Rose Garden")
                                    .font(.footnote)
                                    .foregroundColor(.white)
                                HStack{
                                    Text("$25")
                                        .offset(y:20)
                                    Circle()
                                        .stroke(Color.black,lineWidth: 2)
                                        .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                        .frame(width:40)
                                        .overlay(
                                            Image(systemName: "plus"))
                                        .offset(x:85,y:20)
                                }
                            }
                            .offset(x:-40,y:-30)
                            
                            
                            
                        }
                    )
                }
                .offset(x: 10)
                VStack{
                    UnevenRoundedRectangle(
                        topLeadingRadius: 10, bottomLeadingRadius: 10, bottomTrailingRadius: 30, topTrailingRadius: 10, style: .continuous)
                    .stroke(Color.black, lineWidth: 2)
                    .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 180,height: 200)
                    .overlay(
                        VStack{
                            Image("seafood-soup")
                                .resizable()
                                .offset(x:-10,y:-35)
                            
                                .shadow(radius: 10)
                            //.scaledToFit()
                                .frame(width:140)
                            VStack(alignment:.leading){
                                Text("Seafood Soup")
                                    .font(.title3.bold())
                                Text("Rose Garden")
                                    .font(.footnote)
                                    .foregroundColor(.white)
                                HStack{
                                    Text("$80")
                                        .offset(y:20)
                                    Circle()
                                        .stroke(Color.black,lineWidth: 2)
                                        .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                        .frame(width:40)
                                        .overlay(
                                            Image(systemName: "plus"))
                                        .offset(x:90,y:20)
                                }
                            }
                            .offset(x:-20,y:-30)
                            
                            
                            
                        }
                    )
                }
                .offset(x: 20)
                VStack{
                    UnevenRoundedRectangle(
                        topLeadingRadius: 10, bottomLeadingRadius: 10, bottomTrailingRadius: 30, topTrailingRadius: 10, style: .continuous)
                    .stroke(Color.black, lineWidth: 2)
                    .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 180,height: 200)
                    .overlay(
                        VStack{
                            Image("tacos-on-a-wooden-plate")
                                .resizable()
                                .offset(x:-10,y:-30)
                            
                                .shadow(radius: 10)
                            //.scaledToFit()
                                .frame(width:140)
                            VStack(alignment:.leading){
                                Text("Tocos")
                                    .font(.title3.bold())
                                Text("Rose Garden")
                                    .font(.footnote)
                                    .foregroundColor(.white)
                                HStack{
                                    Text("$40")
                                        .offset(y:20)
                                    Circle()
                                        .stroke(Color.black,lineWidth: 2)
                                        .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                        .frame(width:40)
                                        .overlay(
                                            Image(systemName: "plus"))
                                        .offset(x:90,y:20)
                                }
                            }
                            .offset(x:-40,y:-30)
                            
                            
                            
                        }
                    )
                }
                .offset(x: 30)
                VStack{
                    UnevenRoundedRectangle(
                        topLeadingRadius: 10, bottomLeadingRadius: 10, bottomTrailingRadius: 30, topTrailingRadius: 10, style: .continuous)
                    .stroke(Color.black, lineWidth: 2)
                    .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 180,height: 200)
                    .overlay(
                        VStack{
                            Image("best-burger-in-town")
                                .resizable()
                                .offset(x:-10,y:-30)
                            
                                .shadow(radius: 10)
                            //.scaledToFit()
                                .frame(width:140)
                            VStack(alignment:.leading){
                                Text("Best burger")
                                    .font(.title3.bold())
                                Text("Rose Garden")
                                    .font(.footnote)
                                    .foregroundColor(.white)
                                HStack{
                                    Text("$40")
                                        .offset(y:20)
                                    Circle()
                                        .stroke(Color.black,lineWidth: 2)
                                        .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                        .frame(width:40)
                                        .overlay(
                                            Image(systemName: "plus"))
                                        .offset(x:90,y:20)
                                }
                            }
                            .offset(x:-30,y:-30)
                            
                            
                            
                        }
                    )
                }
                .offset(x: 40)
                VStack{
                    UnevenRoundedRectangle(
                        topLeadingRadius: 10, bottomLeadingRadius: 10, bottomTrailingRadius: 30, topTrailingRadius: 10, style: .continuous)
                    .stroke(Color.black, lineWidth: 2)
                    .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 180,height: 200)
                    .overlay(
                        VStack{
                            Image("best-burger-in-town")
                                .resizable()
                                .offset(x:-10,y:-30)
                            
                                .shadow(radius: 10)
                            //.scaledToFit()
                                .frame(width:140)
                            VStack(alignment:.leading){
                                Text("Best burger")
                                    .font(.title3.bold())
                                Text("Rose Garden")
                                    .font(.footnote)
                                    .foregroundColor(.white)
                                HStack{
                                    Text("$40")
                                        .offset(y:20)
                                    Circle()
                                        .stroke(Color.black,lineWidth: 2)
                                        .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                        .frame(width:40)
                                        .overlay(
                                            Image(systemName: "plus"))
                                        .offset(x:90,y:20)
                                }
                            }
                            .offset(x:-30,y:-30)
                            
                            
                            
                        }
                    )
                }
                .offset(x: 50)
                VStack{
                    UnevenRoundedRectangle(
                        topLeadingRadius: 10, bottomLeadingRadius: 10, bottomTrailingRadius: 30, topTrailingRadius: 10, style: .continuous)
                    .stroke(Color.black, lineWidth: 2)
                    .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 180,height: 200)
                    .overlay(
                        VStack{
                            Image("best-burger-in-town")
                                .resizable()
                                .offset(x:-10,y:-30)
                            
                                .shadow(radius: 10)
                            //.scaledToFit()
                                .frame(width:140)
                            VStack(alignment:.leading){
                                Text("Best burger")
                                    .font(.title3.bold())
                                Text("Rose Garden")
                                    .font(.footnote)
                                    .foregroundColor(.white)
                                HStack{
                                    Text("$40")
                                        .offset(y:20)
                                    Circle()
                                        .stroke(Color.black,lineWidth: 2)
                                        .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                        .frame(width:40)
                                        .overlay(
                                            Image(systemName: "plus"))
                                        .offset(x:90,y:20)
                                }
                            }
                            .offset(x:-30,y:-30)
                            
                            
                            
                        }
                    )
                }
                .offset(x: 60)
                VStack{
                    UnevenRoundedRectangle(
                        topLeadingRadius: 10, bottomLeadingRadius: 10, bottomTrailingRadius: 30, topTrailingRadius: 10, style: .continuous)
                    .stroke(Color.black, lineWidth: 2)
                    .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 180,height: 200)
                    .overlay(
                        VStack{
                            Image("best-burger-in-town")
                                .resizable()
                                .offset(x:-10,y:-30)
                            
                                .shadow(radius: 10)
                            //.scaledToFit()
                                .frame(width:140)
                            VStack(alignment:.leading){
                                Text("Best burger")
                                    .font(.title3.bold())
                                Text("Rose Garden")
                                    .font(.footnote)
                                    .foregroundColor(.white)
                                HStack{
                                    Text("$40")
                                        .offset(y:20)
                                    Circle()
                                        .stroke(Color.black,lineWidth: 2)
                                        .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                        .frame(width:40)
                                        .overlay(
                                            Image(systemName: "plus"))
                                        .offset(x:90,y:20)
                                }
                            }
                            .offset(x:-30,y:-30)
                            
                            
                            
                        }
                    )
                }
                .offset(x: 70)
                
                
        }
        .padding(.horizontal,30)
        .padding(.vertical,30)
        }
        
    }
}

#Preview {
    
        HCardView()
    
}

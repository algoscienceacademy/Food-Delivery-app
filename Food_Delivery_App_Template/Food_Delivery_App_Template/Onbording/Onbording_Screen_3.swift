//
//  Onbording_Screen_3.swift
//  Food_Delivery_App_Template
//
//  Created by Shahrear Hossain on 8/4/24.
//

import SwiftUI

struct Onbording_Screen_3: View {
    var body: some View {
        NavigationView{
            VStack{
                LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                    .overlay(
                        VStack{
                            Image("In-no-time-cuate")
                                .resizable()
                                .scaledToFit()
                            VStack {
                                Text("Free delivery offers")
                                    .foregroundColor(.white)
                                    .font(.title)
                                    .fontWeight(.medium)
                                    .offset(y:-20)
                                
                                Text("Get all your foods in once place, you just place the over we do the rest")
                                    .font(.callout)
                                    .bold()
                                    .frame(width: 300)
                            }
                            .offset(y:-10)
                            
                            HStack{
                                Circle()
                                    .fill(LinearGradient(colors: [Color.green,Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                    .frame(width: 10)
                                Circle()
                                    .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                    .frame(width: 10)
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(LinearGradient(colors: [Color.orange.opacity(0.7),Color.orange.opacity(0.7)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                    .frame(width: 25,height: 10)
                                Circle()
                                    .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                    .frame(width: 10)
                            }
                            
                            VStack{
                                NavigationLink(destination: Sign_UP().navigationBarBackButtonHidden(true)) 
                                {
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(Color.black,lineWidth:2)
                                        .fill(LinearGradient(colors: [Color.green.opacity(0.5),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                        .frame(width: 320,height: 70)
                                        .overlay(
                                            Text("Next")
                                                .foregroundColor(.black)
                                                .bold()
                                            
                                        )
                                }
                               
                                Text("Skip")
                                    .foregroundColor(.gray)
                            }
                            .offset(y:40)
                            
                        }
                        
                        
                    )
                
            }
        }
    }
}

#Preview {
    Onbording_Screen_3()
}

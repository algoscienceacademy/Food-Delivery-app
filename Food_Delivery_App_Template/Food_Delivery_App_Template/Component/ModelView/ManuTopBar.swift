//
//  ManuTopBar.swift
//  Food_Delivery_App_Template
//
//  Created by Shahrear Hossain on 16/4/24.
//
//
import SwiftUI

struct ManuTopBar: View {
  var numberOfProducts: Int
    var body: some View {
        HStack{
            HStack{
                Button  (action:{
                    
                },label: {
                    Circle()
                        .stroke(Color.black,lineWidth: 2)
                        .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                        .frame(width:40)
                        .overlay(
                            Image(systemName: "line.3.horizontal.decrease")
                                .foregroundColor(.black)
                        )
                })
                Spacer()
                // Button  (action:{
                
                //  },label: {
            
                ZStack(alignment:.topTrailing) {
                    Circle()
                        .stroke(Color.black,lineWidth: 2)
                    
                        .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                        .frame(width:40)
                        .overlay(
                            Image(systemName: "cart")
                                .foregroundColor(.black)
                        )
                    if numberOfProducts > 0 {
                        Text("\(numberOfProducts)")
                            .font(.caption2).bold()
                            .foregroundColor(.white)
                            .frame(width:25,height: 25)
                            .background(.ultraThinMaterial)
                            .cornerRadius(50)
                            .offset(x:10,y:-5)
                        
                    }
                    
                    /// })
                }
                
            }
         
        }
            .font(.title2)
            .overlay {
                Text("Home")
                    .foregroundColor(.black)
                    .font(.title3.bold())
            }
            .foregroundStyle(.primary)
            .padding(15)
        }
    }


#Preview {
    ManuTopBar(numberOfProducts: 1)
}

//
//  Edit_Profile.swift
//  Food_Delivery_App_Template
//
//  Created by Shahrear Hossain on 8/4/24.
//

import SwiftUI

struct Edit_Profile: View {
    @State var name: String = ""
    @State var email: String = ""
    @State var password: String = ""
    @State var Bio: String = ""
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
                    VStack{
                        VStack{
                            Image("picture1")
                                .resizable()
                                .scaledToFit()
                                .clipShape(Circle())
                                .frame(width:95)
                                .overlay(
                                    Circle()
                                        .stroke(Color.black,lineWidth: 1.0)
                                        .fill(LinearGradient(colors: [Color.green.opacity(0.3),Color.blue.opacity(0.7)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                        .offset(x:10,y:-20)
                                        .frame(width:35)
                                        .overlay(Image(systemName: "pencil")
                                            .offset(x:10,y:-20)
                                        ),
                                    alignment: .bottomTrailing
                                )
                        }
                        .offset(y:-15)
                        
                        VStack{
                            Text("Full Name")
                                .offset(x:-110,y:-40)
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.black, lineWidth: 2)
                                .fill(LinearGradient(colors: [Color.green.opacity(0.3),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                .frame(width: 320,height: 65)
                                .overlay(
                                    TextField(text: $name, label: {
                                        Text("josh nick")
                                        
                                    })
                                    .offset(x:10)
                                    
                                )
                                .padding(.vertical,-45)
                        }
                        VStack{
                            Text("Email")
                                .offset(x:-126,y:15)
                            
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.black, lineWidth: 2)
                                .fill(LinearGradient(colors: [Color.green.opacity(0.3),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                .frame(width: 320,height: 65)
                                .overlay(
                                    TextField(text: $email, label: {
                                        Text("hello@shahrear")
                                           
                                        
                                    })
                                    
                                    .offset(x:10)
                                    
                                )
                                .offset(y:10)
                        }
                        VStack{
                            Text("Phone Number")
                                .offset(x:-90,y:5)
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.black, lineWidth: 2)
                                .fill(LinearGradient(colors: [Color.green.opacity(0.3),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                .frame(width: 320,height: 65)
                                .overlay(
                                    SecureField(text: $password, label: {
                                        Text("+880- 1859492439")
                                        
                                    })
                                    .offset(x:10)
                                    
                                )
                        }
                        VStack{
                            Text("Bio")
                                .offset(x:-135,y:5)
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.black, lineWidth: 2)
                                .fill(LinearGradient(colors: [Color.green.opacity(0.3),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                .frame(width: 320,height: 200)
                                .overlay(
                                    TextField(text: $Bio, label: {
                                        Text("I love fast food")
                                        
                                    })
                                    .offset(x:10,y:-65)
                                    
                                )
                        }
                        Button(action: {
                                
                            }, label: {
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.black,lineWidth: 2)
                                    .fill(LinearGradient(colors: [Color.orange.opacity(0.3),Color.green.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                    .frame(width: 300,height: 60)
                                    .overlay(
                                        Text("Save")
                                            .foregroundColor(.black)
                                            .fontWeight(.semibold)
                                        
                                    )
                            })
                            .offset(y:30)
                    }
           }
        )
        .navigationTitle("Edit Profile")
        .navigationBarTitleDisplayMode(.inline)
    }
        
}

#Preview {
    NavigationView{
        Edit_Profile()
    }
}

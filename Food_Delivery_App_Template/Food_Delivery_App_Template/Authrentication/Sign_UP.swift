//
//  Sign_UP.swift
//  Food_Delivery_App_Template
//
//  Created by Shahrear Hossain on 8/4/24.
//

import SwiftUI

struct Sign_UP: View {
    @State var name: String = ""
    @State var email: String = ""
    @State var password: String = ""
    @State var retypepassword: String = ""
    var body: some View {
        NavigationView{
        VStack{
            LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
                .overlay(
                    RoundedRectangle(cornerRadius: 45)
                        .stroke(Color.black, lineWidth: 2)
                        .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                        .frame(width: 350,height: 600)
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
                                Text("Sign Up")
                                    .foregroundColor(.white)
                                    .font(.title)
                                Text("Please sign up to get started")
                                    .font(.footnote)
                                    .bold()
                            }
                            .offset(y:-55)
                            
                            VStack{
                                Text("Name")
                                    .offset(x:-126,y:-40)
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
                                            Text("Enter your email")
                                            
                                        })
                                        
                                        .offset(x:10)
                                        
                                    )
                                    .offset(y:10)
                            }
                            VStack{
                                Text("Password")
                                    .offset(x:-110,y:5)
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.black, lineWidth: 2)
                                    .fill(LinearGradient(colors: [Color.green.opacity(0.3),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                    .frame(width: 320,height: 65)
                                    .overlay(
                                        SecureField(text: $password, label: {
                                            Text("Enter Your password")
                                            
                                        })
                                        .offset(x:10)
                                        
                                    )
                            }
                            VStack{
                                Text("Re-type Password")
                                    .offset(x:-80)
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.black, lineWidth: 2)
                                    .fill(LinearGradient(colors: [Color.green.opacity(0.3),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                    .frame(width: 320,height: 65)
                                    .overlay(
                                        SecureField(text: $retypepassword, label: {
                                            Text("Retype password")
                                            
                                        })
                                        .offset(x:10)
                                        
                                    )
                                
                            }
                        //Button(action: {
                                
                           // }, label: {
                            NavigationLink {
                                Main_Tab_View()
                                    .navigationBarBackButtonHidden()
                            } label: {
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.black,lineWidth: 2)
                                    .fill(LinearGradient(colors: [Color.orange.opacity(0.3),Color.green.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                    .frame(width: 300,height: 60)
                                    .overlay(
                                        Text("Sign up")
                                            .foregroundColor(.black)
                                            .fontWeight(.semibold)
                                        
                                    )
                        
                            .offset(y:30)
                            }
                            

                               
                            
                            HStack{
                                Text("Have an account?")
                                    .font(.headline)
                                NavigationLink(destination: Log_IN().navigationBarBackButtonHidden(true))
                            {
                                    Text("Log In")
                                        .font(.headline)
                                }
                            }
                            .offset(y: 50)
                        }
                    }
                )
            
                    
                    
               )
            
             }
            
            
            
            
           }
        }
    }

#Preview {
    NavigationView{
        Sign_UP()
    }
}

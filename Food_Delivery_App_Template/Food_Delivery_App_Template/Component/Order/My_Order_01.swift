//
//  My_Order_01.swift
//  Food_Delivery_App_Template
//
//  Created by Shahrear Hossain on 8/4/24.
//

import SwiftUI

struct My_Order_01: View {
var numberOfProducts: Int
@State private var selectionTab: Tab1?
//@Environment (\.colorScheme) private var scheme
    //Tab Progress
@State private var tabProgress: CGFloat = 0
@State var name: String = ""
@State var email: String = ""
@State var password: String = ""
@State var Bio: String = ""
    var body: some View {
        VStack{
            LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
                .overlay(
                    RoundedRectangle(cornerRadius: 45)
                        .stroke(Color.black, lineWidth: 2)
                        .fill(LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                        .frame(width: 380,height: 750)
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
                        
                        VStack(spacing: 15){
                            
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
                                 
                                
                                    .font(.title2)
                                    .overlay {
                                        Text("My Order")
                                            .foregroundColor(.black)
                                            .font(.title3.bold())
                                    }
                                    .foregroundStyle(.primary)
                                    .padding(15)
                                
                            
                            
                            
                            .foregroundStyle(.primary)
                            .padding(15)
                            // Custom Tab Bar
                            CustomTabBar()
                            GeometryReader{
                                let size = $0.size
                                
                                ScrollView(.horizontal){
                                    LazyHStack(spacing:0){
                                        SampleView()
                                            .id(Tab1.ongoing)
                                            .containerRelativeFrame(.horizontal)
                                        SampleView1()
                                            .id(Tab1.history)
                                            .containerRelativeFrame(.horizontal)
                                        SampleView2()
                                            .id(Tab1.settings)
                                            .containerRelativeFrame(.horizontal)
                                    }
                                    // .scrollTargetLayout()
                                    .offsetX { value in
                                        //conrting offset into progress
                                        let progress = -value / (size.width * CGFloat(Tab1.allCases.count - 1))
                                        // capping progress BTW 0-1
                                        tabProgress = max(min(progress,1), 0)
                                    }
                                    
                                }
                                .scrollPosition(id: $selectionTab)
                                .scrollIndicators(.hidden)
                                .scrollTargetBehavior(.paging)
                                .scrollClipDisabled()
                            }
                            
                        }
                        
                        .frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .top)
                        // .background( LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                        
                    }
                )
            )
        }
    }
    
    @ViewBuilder
    func CustomTabBar() -> some View {
        HStack(spacing: 0){
            ForEach(Tab1.allCases, id: \.rawValue) { tab1 in
                HStack(spacing: 10){
                    Image(systemName: tab1.systemImage)
                    Text(tab1.rawValue)
                        .font(.callout)
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical,10)
                .contentShape(.capsule)
                .onTapGesture {
                    // Updating Tab
                    withAnimation(.snappy){
                        selectionTab = tab1
                    }
                }
            }
        }
        // Scrollable Active tab indicator
        .background(
            GeometryReader{
                let size = $0.size
                let capsuleWidth = size.width / CGFloat(Tab1.allCases.count)
                Capsule()
                   // .fill(scheme == .dark ? .black : .white)
                    .fill( LinearGradient(colors: [Color.green.opacity(0.4),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame (width: capsuleWidth)
                    .offset(x: tabProgress * (size.width - capsuleWidth))
            }
        )
        .background(.ultraThinMaterial,in: .capsule)
        .padding(.horizontal,15)
    }
    //Sample View  For Demostrating Scrollable Tab Bar indicator
    @ViewBuilder
    func SampleView() -> some View {
        VStack{
            VStack{
                VStack{
                    Text("Food")
                    Divider()
                    HStack(spacing:20){
                        
                        Image("picture2")
                            .resizable()
                           
                            .cornerRadius(15)
                            .frame(width:150,height: 100)
                        Spacer()
                        VStack{
                            Text("Pizza Hut")
                                .foregroundColor(.white)
                                .font(.title.bold())
                            HStack{
                                Text("$35.25")
                                Text("l")
                                Text("03 Items")
                            }
                            .offset(y:20)
                        }
                        
                    }
                    HStack{
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black,lineWidth: 2)
                            .fill(LinearGradient(colors: [Color.green.opacity(0.3),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                            .frame(width: 150,height: 40)
                            .overlay(
                                Text("Track Order")
                                    .foregroundColor(.black)
                                    .fontWeight(.semibold)
                                
                            )
                        
                            .offset(x:-20,y:20)
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 2)
                        //.fill(LinearGradient(colors: [Color.orange.opacity(0.3),Color.green.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                            .frame(width: 150,height: 40)
                            .overlay(
                                Text("Cancel")
                                    .foregroundColor(.black)
                                    .fontWeight(.semibold)
                                
                            )
                        
                            .offset(x:20,y:20)
                        
                    }
                }
            }
            .frame(width:360,height: 250)
            .background(.ultraThinMaterial)
            .cornerRadius(15)
            VStack{
                VStack{
                    Text("Soup")
                    Divider()
                    HStack(spacing:20){
                        
                        Image("picture4")
                            .resizable()
                            .cornerRadius(15)
                            .frame(width:150,height: 100)
                        Spacer()
                        VStack{
                            Text("Chicken Soup")
                                .foregroundColor(.white)
                                .font(.title.bold())
                            HStack{
                                Text("$40.25")
                                Text("l")
                                Text("05 Items")
                            }
                            .offset(y:20)
                        }
                        
                    }
                    HStack{
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black,lineWidth: 2)
                            .fill(LinearGradient(colors: [Color.green.opacity(0.3),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                            .frame(width: 150,height: 40)
                            .overlay(
                                Text("Track Order")
                                    .foregroundColor(.black)
                                    .fontWeight(.semibold)
                                
                            )
                        
                            .offset(x:-20,y:20)
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 2)
                        //.fill(LinearGradient(colors: [Color.orange.opacity(0.3),Color.green.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                            .frame(width: 150,height: 40)
                            .overlay(
                                Text("Cancel")
                                    .foregroundColor(.black)
                                    .fontWeight(.semibold)
                                
                            )
                        
                            .offset(x:20,y:20)
                        
                    }
                }
            }
            .frame(width:360,height: 250)
            .background(.ultraThinMaterial)
            .cornerRadius(15)
        }
        .offset(y:-30)
    }
    @ViewBuilder
    func SampleView1() -> some View {
        VStack{
            VStack{
                VStack{
                    HStack{
                        Text("Food")
                        Spacer()
                        Text("Completed")
                            .foregroundColor(.green)
                            
                    }
                    .padding(.horizontal,10)
                    Divider()
                    HStack(spacing:20){
                        
                        Image("picture2")
                            .resizable()
                            .cornerRadius(15)
                            .frame(width:150,height: 100)
                        Spacer()
                        VStack{
                            Text("Pizza Hut")
                                .foregroundColor(.white)
                                .font(.title.bold())
                            HStack{
                                Text("$35.25")
                                    .foregroundColor(.orange)
                                Text("l")
                                Text("03 Items")
                                    .foregroundColor(.orange)
                            }
                            
                            .offset(y:20)
                        }
                        
                    }
                    HStack{
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black,lineWidth: 2)
                           // .fill(LinearGradient(colors: [Color.green.opacity(0.3),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                            .frame(width: 150,height: 40)
                            .overlay(
                                Text("Rate")
                                    .foregroundColor(.black)
                                    .fontWeight(.semibold)
                                
                            )
                        
                            .offset(x:-20,y:20)
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black,lineWidth: 2)
                        .fill(LinearGradient(colors: [Color.green.opacity(0.3),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                            .frame(width: 150,height: 40)
                            .overlay(
                                Text("Re-Order")
                                    .foregroundColor(.black)
                                    .fontWeight(.semibold)
                                
                            )
                        
                            .offset(x:20,y:20)
                        
                    }
                }
                
            }
            .frame(width:360,height: 250)
            .background(.ultraThinMaterial)
            .cornerRadius(15)
            VStack{
                VStack{
                    HStack{
                        Text("Soup")
                        Spacer()
                        Text("Completed")
                            .foregroundColor(.green)
                            
                    }
                    .padding(.horizontal,10)
                    Divider()
                    HStack(spacing:20){
                        
                        Image("picture4")
                            .resizable()
                            .cornerRadius(15)
                            .frame(width:150,height: 100)
                        Spacer()
                        VStack{
                            Text("Chicken Soup")
                                .foregroundColor(.white)
                                .font(.title.bold())
                            HStack{
                                Text("$40.25")
                                    .foregroundColor(.orange)
                                Text("l")
                                Text("05 Items")
                                    .foregroundColor(.orange)
                            }
                            
                            .offset(y:20)
                        }
                        
                    }
                    HStack{
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black,lineWidth: 2)
                           // .fill(LinearGradient(colors: [Color.green.opacity(0.3),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                            .frame(width: 150,height: 40)
                            .overlay(
                                Text("Rate")
                                    .foregroundColor(.black)
                                    .fontWeight(.semibold)
                                
                            )
                        
                            .offset(x:-20,y:20)
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black,lineWidth: 2)
                        .fill(LinearGradient(colors: [Color.green.opacity(0.3),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                            .frame(width: 150,height: 40)
                            .overlay(
                                Text("Re-Order")
                                    .foregroundColor(.black)
                                    .fontWeight(.semibold)
                                
                            )
                        
                            .offset(x:20,y:20)
                        
                    }
                }
            }
            .frame(width:360,height: 250)
            .background(.ultraThinMaterial)
            .cornerRadius(15)
        }
        .offset(y:-30)
    }
    @ViewBuilder
    func SampleView2() -> some View {
        
        VStack{
            
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
                    .fill(LinearGradient(colors: [Color.green.opacity(0.3),Color.blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 100,height: 50)
                    .overlay(
                        Text("Save")
                            .foregroundColor(.black)
                            .fontWeight(.semibold)
                        
                    )
            })
           // .offset(y:30)
        }
        .offset(y:10)
    }
}

#Preview {
    NavigationView{
        My_Order_01(numberOfProducts: 1)
    }
}

//
//  ExpenseView.swift
//  SimpleBudget - A Simple and minimal Budget Tracking App for iOS.
//
//  Created by Taha Tuna
//

import SwiftUI

struct ExpenseView: View {
    var body: some View {
        VStack {
            
            HStack{ // Top
                VStack{ //Greeting and Name
                    Text("Good Morning!")
                        .font(.body)
                        .foregroundColor(.customGray)
                    
                    Text("Taha Tuna")
                        .font(.title)
                }
                
                Spacer()
                
                Image(systemName: "bell.circle") // Bell Icon
                    .font(.largeTitle)
            }.padding(30)
            
            VStack{// Credit Card View
                HStack{// Balance
                    VStack{
                        Text("€655.00")
                            .font(.largeTitle)
                            .foregroundColor(.offWhite)
                        
                        Text("Balance")
                            .font(.body)
                            .foregroundColor(.customGray)
                        Spacer()
                    }.padding(10)
                    
                    Spacer()
                    
                    VStack {
                        Text("...")
                            .font(.largeTitle)
                            .foregroundColor(.offWhite)

                        Spacer()
                    }
                }
                .padding(10)
                
                // Progress Bar
                VStack {
                    Rectangle()
                        .fill( // Color Gradient
                            LinearGradient(colors: [.yellow, .red], startPoint: .leading, endPoint: .trailing)
                        )
                        .frame(width: 300, height: 10)
                        .cornerRadius(10)
                    
                    
                    HStack { // Limit Amount
                        Spacer()
                        Text("€1200")
                            .foregroundColor(.customGray)
                            .font(.body)
                    }.padding(.horizontal, 10)
                }.padding(15) // MARK: Change these paddings.
                    
                
                HStack(spacing: 10){//Stars and Logo
                    HStack(spacing: 0){
                        Image(systemName: "star")
                            .foregroundColor(.offWhite)
                        Image(systemName: "star")
                            .foregroundColor(.offWhite)
                        Image(systemName: "star")
                            .foregroundColor(.offWhite)
                        Image(systemName: "star")
                            .foregroundColor(.offWhite)
                    }
                    HStack(spacing: 0){
                        Image(systemName: "star")
                            .foregroundColor(.offWhite)
                        Image(systemName: "star")
                            .foregroundColor(.offWhite)
                        Image(systemName: "star")
                            .foregroundColor(.offWhite)
                        Image(systemName: "star")
                            .foregroundColor(.offWhite)
                    }
                    
                    Spacer()
                    
                    HStack{
                        Image(systemName: "circle.fill")
                            .foregroundColor(.yellow)
                            .offset(x: 18)
                        Image(systemName: "circle.fill")
                            .foregroundColor(.red)
                            .blendMode(.hardLight)
                    }
                    
                }.padding(10)
                
                
                
            }
            .frame(width: 350, height: 220)
            .background(Color.offBlack)
            .cornerRadius(20)
            
            
            
        }
        
    }
}

extension Color{ // Move to separate file
    static let offWhite = Color("offWhite")
    static let offBlack = Color("offBlack")
    static let darkGray = Color("darkGray")
    static let customGray = Color("customGray")
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseView()
    }
}

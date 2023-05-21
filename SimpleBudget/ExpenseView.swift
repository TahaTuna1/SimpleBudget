//
//  ExpenseView.swift
//  SimpleBudget - A Simple and minimal Budget Tracking App for iOS.
//
//  Created by Taha Tuna
//

import SwiftUI

struct ExpenseView: View {
    let listItems = ["Burgers", "Gas", "Steam", "Lidl", "Snacks", "Coffee", "Charger"]
    var body: some View {
        VStack {
            // Top
            HStack{
                VStack(alignment: .leading){ //Greeting and Name
                    Text("Good Morning!")
                        .font(.body)
                        .foregroundColor(.customGray)
                    
                    Text("Taha Tuna")
                        .font(.title)
                }
                
                Spacer()
                
                Image(systemName: "bell.circle") // Bell Icon
                    .font(.largeTitle)
                    .fontWeight(.light)
            }.padding(30)
            
            // Credit Card View
            VStack{
                HStack{// Balance
                    VStack(alignment: .leading){
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
                        .frame(width: 340, height: 10)
                        .cornerRadius(10)
                    
                    
                    HStack { // Limit Amount
                        Spacer()
                        Text("€1200")
                            .foregroundColor(.customGray)
                            .font(.body)
                    }.padding(.horizontal, 10)
                }// MARK: Change these paddings.
                .padding(0)
                
                //Stars and Logo
                HStack(spacing: 10){
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
                    
                }.padding(20)
                
            }
            .frame(width: 370, height: 220)
            .background(Color.offBlack)
            .cornerRadius(20)
            .shadow(color: .customGray, radius: 0, x: 3, y: 3)
            
            
            List {//MARK: Expense list. Populate with MockData Later
                HStack {
                    Text("Expenses")
                        .foregroundColor(.offBlack)
                        .font(.title)
                    
                    Spacer()
                    
                    Button {//MARK: Needs Styling
                        //
                    } label: {
                        Image(systemName: "plus.circle")
                            .fontWeight(.light)
                            .font(.largeTitle)
                            .foregroundColor(Color.offBlack)
                    }
                }
                //Create List from array
                ForEach(listItems, id: \.self) { item in
                    HStack {
                        // Icon
                        Image(systemName: "cup.and.saucer.fill")
                            .background(
                                Rectangle()
                                    .fill(Color.offWhite)
                                    .frame(width: 60, height: 60)
                                    .cornerRadius(20)
                            )
                            .font(.title)
                            .padding(15)
                        
                        VStack(alignment: .leading) {//Item name and Description
                            Text(item)
                                .font(.title2)
                                .foregroundColor(.offWhite)
                            
                            Text("Description")
                                .font(.footnote)
                                .foregroundColor(.customGray)
                        }
                        
                        Spacer()
                        
                        Text("€13")//Price
                            .font(.title2)
                            .foregroundColor(.offWhite)
                    }
                    .padding(10)
                    .background(Color.offBlack)
                    .cornerRadius(10)
                }
            }
            .listStyle(.plain)
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

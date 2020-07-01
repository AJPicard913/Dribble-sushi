//
//  ContentView.swift
//  Sushi
//
//  Created by AJ Picard on 6/30/20.
//  Copyright © 2020 AJ Picard. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Header()
            
            Categories()
                .padding(.top, 20)
            
            ScrollView (.horizontal, showsIndicators: false) {
                HStack (spacing: 30) {
                    Card1()
                    Card2()
                    Card3()
                }
                .padding(.leading, 30)
            }
            .padding(.top, 20)
            
            VStack(alignment: .leading) {
                
                Text("Japanese Food")
                    .font(.system(size: 34, weight: .bold, design: .rounded))
                
                HStack (spacing: 20) {
                        Card4()
                        Card5()
                        Card6()
                        
                    }
                }
            .padding(.top, 30)
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Header: View {
    var body: some View {
        HStack {
            Text("Discover")
                .font(.system(size: 44, weight: .bold, design: .rounded))
                .padding(.leading, 30)
            Spacer()
            Image(systemName: "magnifyingglass")
                .font(.system(size: 28, weight: .light))
                .padding(.trailing, 30)
        }
    }
}

struct Categories: View {
    var body: some View {
        HStack (spacing: 50) {
            VStack(alignment: .leading) {
                Text("Popular")
                    .font(.system(size: 16, weight: .bold, design: .rounded))
                    .foregroundColor(Color.orange)
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 20, height: 6)
                    .foregroundColor(Color.orange)
                    .padding(.top, -3)
            }
            VStack {
                Text("Rating")
                    .font(.system(size: 16, weight: .medium, design: .rounded))
                    .foregroundColor(Color.gray)
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 20, height: 6)
                    .foregroundColor(Color.orange)
                    .opacity(0)
                    .padding(.top, -3)
            }
            VStack {
                Text("Recent")
                    .font(.system(size: 16, weight: .medium, design: .rounded))
                    .foregroundColor(Color.gray)
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 20, height: 6)
                    .foregroundColor(Color.orange)
                    .opacity(0)
                    .padding(.top, -3)
            }
            Spacer()
        }
        .padding(.leading, 30)
    }
}

struct Card1: View {
    var body: some View {
        ZStack {
            Image("Mountain1")
                .resizable()
                .frame(width: 250, height: 350)
                .cornerRadius(20)
            
            VStack(alignment: .leading) {
                Text("Mount Fuji")
                    .foregroundColor(Color.white)
                    .font(.system(size: 22, weight: .bold, design: .rounded))
                Text("Fujinomiya, Japan")
                    .foregroundColor(Color.white)
                    .font(.system(size: 16, weight: .medium, design: .rounded))
                    .padding(.top, 5)
            }
            .offset(x: -20, y: 110)
        }
    }
}

struct Card2: View {
    var body: some View {
        ZStack {
            Image("Mountain2")
                .resizable()
                .frame(width: 250, height: 350)
                .cornerRadius(20)
            
            VStack(alignment: .leading) {
                Text("Mount Fuji")
                    .foregroundColor(Color.white)
                    .font(.system(size: 22, weight: .bold, design: .rounded))
                Text("Shibuya-ku, Japan")
                    .foregroundColor(Color.white)
                    .font(.system(size: 16, weight: .medium, design: .rounded))
                    .padding(.top, 5)
            }
            .offset(x: -20, y: 110)
        }
    }
}

struct Card3: View {
    var body: some View {
        ZStack {
            Image("Mountain1")
                .resizable()
                .frame(width: 250, height: 350)
                .cornerRadius(20)
            
            VStack(alignment: .leading) {
                Text("Mount Fuji")
                    .foregroundColor(Color.white)
                    .font(.system(size: 22, weight: .bold, design: .rounded))
                Text("Fujinomiya, Japan")
                    .foregroundColor(Color.white)
                    .font(.system(size: 16, weight: .medium, design: .rounded))
                    .padding(.top, 5)
            }
            .offset(x: -20, y: 110)
        }
    }
}

struct Card4: View {
    var body: some View {
        ZStack {
            VStack{
                Text("")
            }
            .frame(width: 95, height: 140)
            .background(Color(#colorLiteral(red: 0.9155570498, green: 0.9155570498, blue: 0.9155570498, alpha: 1)))
            .cornerRadius(20)
            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(0.2), radius: 20, x: 0, y: 20)
            .offset(y: 8)
            
            VStack {
                Image("Sushi1")
                    .resizable()
                    .frame(width: 50, height: 50)
                Text("Sushi")
                    .font(.system(size: 16, weight: .bold, design: .rounded))
                    .padding(.top, 10)
            }
            .frame(width: 100, height: 140)
            .background(Color.white)
            .cornerRadius(20)
            
        }
    }
}

struct Card5: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color(#colorLiteral(red: 0.888086929, green: 0.888086929, blue: 0.888086929, alpha: 1)))
            VStack {
                Image("Roman")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(25)
                Text("Ramen")
                    .font(.system(size: 16, weight: .bold, design: .rounded))
                    .padding(.top, 9)
            }
            
        }
        .frame(width: 100, height: 140)
    }
}

struct Card6: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color(#colorLiteral(red: 0.888086929, green: 0.888086929, blue: 0.888086929, alpha: 1)))
            VStack {
                Image("Sushi2")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(25)
                Text("Sushi")
                    .font(.system(size: 16, weight: .bold, design: .rounded))
                    .padding(.top, 9)
            }
            
        }
        .frame(width: 100, height: 140)
    }
}

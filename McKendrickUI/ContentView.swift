//
//  ContentView.swift
//  McKendrickUI
//
//  Created by Steven Lipton on 3/6/20.
//  Copyright © 2020 Steven Lipton. All rights reserved.
//
// An exercise file for iOS Development Tips Weekly
// A weekely course on LinkedIn Learning for iOS developers
//  Season 10 (Q2 2020) video 08
//  by Steven Lipton (C)2020, All rights reserved
// Learn more at https://linkedin-learning.pxf.io/YxZgj
// This Week:  Nest GeometeryReader for proportional sizing and grids
//  For more code, go to http://bit.ly/AppPieGithub

// Quarter Share, Ishmael Wang, Lois McKendrick, and
// Trader Tales from the Golden Age of the  Solar Clipper
// copyright Nathan Lowell, used with permission
// To read the novel behind this project, see https://www.amazon.com/Quarter-Share-Traders-Golden-Clipper-ebook/dp/B00AMO7VM4

import SwiftUI

let buttonTitles = ["Comms","Jackets","Spacer Handbook","Ship Functions","News" ]

struct ContentView: View {
    var body: some View {
        GeometryReader{ geometry in
        VStack{
            TitleView(subtitle: "Functional")
            .foregroundColor(.gold)
            .padding([.bottom],10)
            .padding(.top,40)
            HStack{
                ZStack{ //Content
                    //BusinessNewsView()
                    EnvironmentalView()
                } //Zstack
                    .frame(width:geometry.size.width * 0.75 )
                    .foregroundColor(.gold)
                GeometryReader{ geometry in
                    VStack { //buttons
                       Spacer()
                        ButtonSelectionView(buttonTitles:buttonTitles)
                            .frame(height: geometry.size.height * (4/5))
                }//vstack
                }//geometry

            }//Hstack
            Spacer()
            FootNoteView()
                .padding([.leading,.trailing], 10)
                
        }
        .background(Color.darkGreen)
        }//geometry
        
        

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

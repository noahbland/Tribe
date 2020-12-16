//
//  TableBarView.swift
//  TribeCardViewShit
//
//  Created by Noah Bland on 12/11/20.
//

import SwiftUI

struct TabBarView: View {
    @StateObject var tabData = TabViewModel()
    @Namespace var animation
    var body: some View {
        
        ZStack{
            
            TabView{
                wingIt(tabData: tabData, animation: animation)
                    .tabItem {
                        Image(systemName: "house")
                    }
                
                planIt()
                    .tabItem {
                        Image(systemName: "house")
                    }
                
                Text("SendIt")
                    .tabItem {
                        Image(systemName: "house")
                    }
                
                Text("Search")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                    }
                
                Text("Profile")
                    .tabItem {
                        Image(systemName: "person")
                    }
            }
            
            if tabData.isDetail{
                
                Detail(tabData: tabData, animation: animation)
            }
            
            
        }
        
        
        //accentColor(.black) // threw error in machine code?
        
    }
}


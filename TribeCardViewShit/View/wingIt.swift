//
//  wingIt.swift
//  TribeCardViewShit
//
//  Created by Noah Bland on 12/11/20.
//

import SwiftUI

struct wingIt: View {
    
    @State var Items = [
        
        Item(title: "Noah", sport: "Surfing", age: "21", image: "IMG_4427"),
        Item(title: "Max", sport: "Climbing", age: "20", image: "IMG_4426"),
        Item(title: "Cole", sport: "Jacking Off", age: "21", image: "IMG_4425"),


    ]
    
    @ObservedObject var tabData : TabViewModel
    var animation: Namespace.ID
    
    var body: some View {
        
        VStack{
            
            ZStack{
                HStack{
                    Button(action:{}){
                        Image(systemName: "line.horizontal.3.decrease")
                            .font(.system(size: 34, weight: .heavy))
                            .foregroundColor(.primary)
                    }
                    
                    Spacer()
                }
                Text("Wing It")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.primary)
            }
            
            .padding()
            
            ScrollView(.vertical, showsIndicators: false){
                
                VStack(spacing: 20){
                    
                    ForEach(Items){item in
                        
                        //Card View
                        
                        CardView(item: item, tabData: tabData,animation: animation)
                    }
                }
                .padding()
            }
            
            
        }
    }
}

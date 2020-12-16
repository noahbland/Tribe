//
//  wingIt.swift
//  TribeCardViewShit
//
//  Created by Noah Bland on 12/11/20.
//

import SwiftUI

struct planIt: View {
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
                Text("Send It")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.primary)
            }
            
            .padding()
            
            Spacer()
            
            
        }
    }
}

//
//  CardView.swift
//  TribeCardViewShit
//
//  Created by Noah Bland on 12/11/20.
//

import SwiftUI

struct CardView: View {
    
    var item: Item
    @ObservedObject var tabData : TabViewModel
    var animation: Namespace.ID
    
    var body: some View {
        
        HStack{
            
            VStack(alignment: .leading, spacing: 10){
                
                Text(item.title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                
                Text(item.age)
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                
                Text(item.sport)
                    .font(.title)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                
                
                
                Button(action: {
                    withAnimation(.spring()){
                        tabData.selectedItem = item
                        tabData.isDetail.toggle()
                    }
                }){
                    Text("Contact")
                        .fontWeight(.heavy)
                        .foregroundColor(Color(.white))
                        .padding(.vertical)
                        .padding(.horizontal,25)
                        .background(Color.black)
                        .cornerRadius(15)
                }
                .padding()
            }
            //.padding(.leading,2)
            
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .matchedGeometryEffect(id: item.image, in: animation)
                .frame(height: UIScreen.main.bounds.height / 5)
                
            
        }
        .padding()
        .background(Color(.systemBlue))
        .cornerRadius(25)
    }
}


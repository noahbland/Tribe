//
//  Detail.swift
//  TribeCardViewShit
//
//  Created by Noah Bland on 12/13/20.
//

import SwiftUI

struct Detail: View {
    @ObservedObject var tabData : TabViewModel
    var animation: Namespace.ID
    var body: some View {
        
        VStack{
            
            VStack{
                
                ZStack{
                    HStack{
                        Button(action:{
                            withAnimation(.spring()){
                                tabData.isDetail.toggle()
                            }
                        }){
                            Image(systemName: "arrow.left")
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
                
                
                Image(tabData.selectedItem.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .matchedGeometryEffect(id: tabData.selectedItem.image, in: animation)
                    .frame(height: UIScreen.main.bounds.height / 5)
                    .padding(.vertical,25 )
            }
            .background(Color(.gray))
            
            Spacer()
        }
        .background(
            ZStack{
                
                Color(tabData.selectedItem.image)
                    .ignoresSafeArea(.all, edges: .top)
                Color.black
                    .ignoresSafeArea(.all, edges: .bottom)
                
                Color.black
            }
        )
    }
}


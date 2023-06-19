//
//  HomeView.swift
//  kick
//
//  Created by Drew on 6/19/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack{
                
                //featured streams title
                HStack{
                    Text("Featured Streams")
                        .frame(width: 300, height: 60, alignment: .leading)
                        .padding([.top, .horizontal], 5)
                    Spacer()
                }
                
                //featured streams
                FeaturedStreamsRow()
                
                
                //divider
                Rectangle().frame(width: .infinity, height: 2, alignment: .center)
                    .padding(.top)
                
                //featured streams title
                HStack{
                    Text("Top Live Categories")
                        .frame(width: 300, height: 60, alignment: .leading)
                        .padding([.top, .horizontal], 5)
                    Spacer()
                }
                
                //featured streams
                CategoryRowView()
                
                //Spacer()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

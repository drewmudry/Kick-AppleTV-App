//
//  CategoryView.swift
//  kick
//
//  Created by Drew on 6/19/23.
//

import SwiftUI

struct CategoryView: View {
    //get stream data model
    let category : Category
    
    
    var body: some View {
        //build of stream post
        VStack{
            Image(category.thumbnail)
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 200)
                .cornerRadius(10)
                .padding([.top, .horizontal], 5)
            
            Text(category.name)
                .truncationMode(.tail)
                .font(.caption2.bold())
                .frame(width:150, height: 24, alignment: .leading)
            
            Text(category.Viewers)
                .truncationMode(.tail)
                .font(.caption2)
                .frame(width:150, height: 24, alignment: .leading)
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category:  MockData().Categories.first!)
    }
}

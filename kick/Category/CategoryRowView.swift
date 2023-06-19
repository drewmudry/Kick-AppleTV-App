//
//  CategoryRowView.swift
//  kick
//
//  Created by Drew on 6/19/23.
//

import SwiftUI

struct CategoryRowView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            
            //story section
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    
                    ForEach(MockData().Categories) {
                        CategoryView(category: $0)
                    }
                }
            }
        }
    }
}

struct CategoryRowView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRowView()
    }
}

//
//  FeaturedStreamsRow.swift
//  kick
//
//  Created by Drew on 6/19/23.
//

import SwiftUI

struct FeaturedStreamsRow: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            
            //story section
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    
                    ForEach(MockData().Streams) {
                        StreamView(stream: $0)
                    }
                }
            }
        }
    }
}

struct FeaturedStreamsRow_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedStreamsRow()
    }
}

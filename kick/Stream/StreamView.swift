//
//  StreamView.swift
//  kick
//
//  Created by Drew on 6/19/23.
//

import SwiftUI

struct StreamView: View {
    
    //get stream data model
    let stream : Stream
    
    
    var body: some View {
        //build of stream post
        VStack{
            Image(stream.thumbnail)
                .resizable()
                .scaledToFill()
                .frame(width: 540, height: 320)
                .cornerRadius(10)
                .padding([.top, .horizontal], 5)
            
            Text(stream.title)
                .truncationMode(.tail)
                .font(.caption2)
                .frame(width:540, height: 24, alignment: .leading)
                
            
            Text(stream.user)
                .truncationMode(.tail)
                .font(.caption2)
                .frame(width:540, height: 24, alignment: .leading)
            
            Text(stream.category)
                .truncationMode(.tail)
                .font(.caption2)
                .frame(width:540, height: 24, alignment: .leading)

        }
    }
}

struct StreamView_Previews: PreviewProvider {
    static var previews: some View {
        StreamView(stream: MockData().Streams.first!)
    }
}


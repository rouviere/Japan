//
//  InsetGalleryView.swift
//  Japan
//
//  Created by Forrest Anderson on 12/14/20.
//

import SwiftUI

struct InsetGalleryView: View {
    let site: Site
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(site.gallery, id: \.self) { item in
                   Image(item)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .cornerRadius(12)
                } //: LOOP
            } //: HSTACK
        } //: SCROLL
    }
}

struct InsetGalleryView_Previews: PreviewProvider {
    static let sites: [Site] = Bundle.main.decode("sites.json")
    
    static var previews: some View {
        InsetGalleryView(site: sites[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

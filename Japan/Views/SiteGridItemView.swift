//
//  SiteGridItemView.swift
//  Japan
//
//  Created by Forrest Anderson on 12/16/20.
//

import SwiftUI

struct SiteGridItemView: View {
    let site: Site
    
    var body: some View {
        Image(site.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct SiteGridItemView_Previews: PreviewProvider {
    static let sites: [Site] = Bundle.main.decode("sites.json")
    static var previews: some View {
        SiteGridItemView(site: sites[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

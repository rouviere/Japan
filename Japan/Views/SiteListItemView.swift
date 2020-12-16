//
//  SiteListItemView.swift
//  Japan
//
//  Created by Forrest Anderson on 12/14/20.
//

import SwiftUI

struct SiteListItemView: View {
    let site: Site
    
    var body: some View {
        HStack {
            Image(site.image)
                .resizable()
                .scaledToFit()
                .frame(width: 90, height: 90, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            VStack(alignment: .leading, spacing: 8) {
                Text(site.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(site.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            }
        }
    }
}

struct SiteListItemView_Previews: PreviewProvider {
    static let sites: [Site] = Bundle.main.decode("sites.json")
    
    static var previews: some View {
        SiteListItemView(site: sites[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

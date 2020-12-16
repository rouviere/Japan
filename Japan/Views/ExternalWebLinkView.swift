//
//  ExternalWebLinkView.swift
//  Japan
//
//  Created by Forrest Anderson on 12/14/20.
//

import SwiftUI

struct ExternalWebLinkView: View {
    let site: Site
    
    var body: some View {
        GroupBox {
            HStack {
               Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Link(site.name, destination: (URL(string: site.link) ?? URL(string: "https://wikipedia.org"))!)
                    Image(systemName: "arrow.up.right.square")
                }
                .foregroundColor(.accentColor)
            } //: HSTACK
        } //: GROUP
    }
}

struct ExternalWebLinkView_Previews: PreviewProvider {
    static let sites: [Site] = Bundle.main.decode("sites.json")
    
    static var previews: some View {
        ExternalWebLinkView(site: sites[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

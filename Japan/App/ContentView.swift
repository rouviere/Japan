//
//  ContentView.swift
//  Japan
//
//  Created by Forrest Anderson on 12/14/20.
//

import SwiftUI

struct ContentView: View {
    let sites: [Site] = Bundle.main.decode("sites.json")
    
    var body: some View {
        NavigationView {
            Group {
                List {
                    CoverImageView()
                        .frame(height: 300)
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                    
                    ForEach(sites) { site in
                        NavigationLink(destination: SiteDetailView(site: site)) {
                            SiteListItemView(site: site)
                        }
                    }
                } //: LIST
                .listStyle(InsetGroupedListStyle())
            } //: GROUP
        } //: NAV
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//
//  InsetFactView.swift
//  Japan
//
//  Created by Forrest Anderson on 12/14/20.
//

import SwiftUI

struct InsetFactView: View {
    let site: Site
    
    var body: some View {
        GroupBox {
            TabView {
                ForEach(site.fact, id: \.self) { item in
                    Text(item)
                }
            } //: TAB
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        } //: GROUPBOX
    }
}

struct InsetFactView_Previews: PreviewProvider {
    
    static let sites: [Site] = Bundle.main.decode("sites.jsons")
    static var previews: some View {
        InsetFactView(site: sites[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

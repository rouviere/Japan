//
//  SiteDetailView.swift
//  Japan
//
//  Created by Forrest Anderson on 12/14/20.
//

import SwiftUI

struct SiteDetailView: View {
    let site: Site
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                
                // Hero Image
                Image(site.image)
                    .resizable()
                    .scaledToFit()
                
                // Title
                Text(site.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                
                // Headline
                Text(site.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                // Gallery
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Photo Gallery")
                    InsetGalleryView(site: site)
                }
                
                // Facts
                Group {
                    HeadingView(headingImage: "questionmark.circle", headingText: "Did you know?")
                    InsetFactView(site: site)
                }
                
                // Description
                Group {
                    HeadingView(headingImage: "info.circle", headingText: "\(site.name) Overview")
                    Text(site.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                .padding(.horizontal)
                
                // Map
                Group {
                HeadingView(headingImage: "map", headingText: "Historic Sites")
                    InsetMapView()
                }
                
                // Link
                Group {
                    HeadingView(headingImage: "books.vertical", headingText: "Learn More")
                    ExternalWebLinkView(site: site)
                } //: Group
                
            } //: VSTACK
        } //: SCROLL
    }
}

struct SiteDetailView_Previews: PreviewProvider {
    static let sites: [Site] = Bundle.main.decode("sites.json")
    
    static var previews: some View {
        SiteDetailView(site: sites[1])
    }
}


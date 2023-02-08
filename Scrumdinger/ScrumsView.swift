//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Bagrat Arutyunov on 08.02.2023.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    var body: some View {
        List{
            ForEach(scrums) { scrum in
                CardView(scrum: scrum)
                    .listRowBackground(scrum.theme.mainColor)
            }
        }
    }
}

struct ScrumViews_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: DailyScrum.sampleData)
    }
}

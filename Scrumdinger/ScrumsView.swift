//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Bagrat Arutyunov on 08.02.2023.
//

import SwiftUI

struct ScrumsView: View {
    @Binding var scrums: [DailyScrum]
    var body: some View {
        List{
            ForEach($scrums) { $scrum in
                NavigationLink(destination: DetailView(scrum: $scrum)) {
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
        }
        .navigationTitle("Daily Scrums")
        .toolbar {
            Button(action: {}) {
                Image(systemName: "plus")
            }
            .accessibilityLabel("New Scrum")
        }
    }
}

struct ScrumViews_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ScrumsView(scrums: .constant(DailyScrum.sampleData))
        }
    }
}

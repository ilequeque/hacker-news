//
//  DetailView.swift
//  hacker news
//
//  Created by Iliyas Shakhabdin on 26.03.2024.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://www.udemy.com")
}


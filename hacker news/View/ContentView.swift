//
//  ContentView.swift
//  hacker news
//
//  Created by Iliyas Shakhabdin on 26.03.2024.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts){post in
                NavigationLink(destination:  DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points)).padding(.trailing)
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("H4XOR News")
        }
        .onAppear(perform: {
            self.networkManager.fetchData()
        })
    }
}

#Preview {
    ContentView()
}

//
//  ContentView.swift
//  H4XER N3VV$
//
//  Created by Михаил Кузнецов on 06.07.2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkingManager = NetworkManager ()
    var body: some View {
        NavigationView {
            List {
                ForEach(networkingManager.posts) { post in
                    NavigationLink(destination: DetailView (url: post.url)) {
                        HStack {
                            Text(String(post.points))
                            Text(post.title)
                            Text(post.id)
                            
                        }
                    }
                    
                }
            }
            .navigationBarTitle("H4XER NEWS")
        }
        .onAppear {
            self.networkingManager.fetchData()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//struct Post : Identifiable {
//    let id: String
//    let title : String
//}

//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Bay"),
//    Post(id: "3", title: "Hello")]

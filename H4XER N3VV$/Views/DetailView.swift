//
//  DetailView.swift
//  H4XER N3VV$
//
//  Created by Михаил Кузнецов on 08.07.2023.
//

import SwiftUI
 

struct DetailView: View {
    let url : String?
    
    var body: some View {
       WebView (urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}



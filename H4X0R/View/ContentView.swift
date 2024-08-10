//
//  ContentView.swift
//  H4X0R
//
//  Created by Nguyễn Thanh Minh on 21/07/2024.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkingManager()
    //dang ky doi tuong duoc quan sat
    //để SwiftUI có thể theo dõi các thay đổi của nó và cập nhật giao diện khi có sự thay đổi.
    var body: some View {
        NavigationView{
            List(networkManager.posts){ posts in
                NavigationLink(destination: DetailView(url: posts.url)) {
                    HStack {
                        Text(String(posts.points))
                        Text(posts.title)
                    }
                }
                
            }
            .navigationTitle("H4X0R NEWS")
        }
        .onAppear{
            networkManager.fetchDate()
        }
    }
}

#Preview {
    ContentView()
}

//let posts = [
//    Post(id: "1", title: "hi"),
//    Post(id: "2", title: "bye"),
//    Post(id: "3", title: "how are you")
//]

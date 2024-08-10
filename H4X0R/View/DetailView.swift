//
//  DetailView.swift
//  H4X0R
//
//  Created by Nguyễn Thanh Minh on 21/07/2024.
//

import SwiftUI
import WebKit
struct DetailView: View {
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "gogle.com")
}


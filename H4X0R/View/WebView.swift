//
//  WebView.swift
//  H4X0R
//
//  Created by Nguyễn Thanh Minh on 21/07/2024.
//

import Foundation
import WebKit
import SwiftUI
struct WebView: UIViewRepresentable{//một cấu trúc đại diện cho một UIView có thể được sử dụng trong SwiftUI
    let urlString: String?
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString{
            if let url = URL(string: safeString){// tao 1 doi tuong url
                let request = URLRequest(url: url)//tao 1 URLrequest de yeu cau tai url
                uiView.load(request)
            }
        }
    }
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()// một loại UIView được cung cấp bởi WebKit để hiển thị nội dung web
    }
}
//->cho phép nhúng và hiển thị một trang web

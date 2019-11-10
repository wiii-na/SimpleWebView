//
//  MyWebView.swift
//  SimpleWebView
//
//  Created by YuArai on 2019/11/10.
//  Copyright © 2019 NaturalArchitect. All rights reserved.
//

import SwiftUI
import WebKit

class observable: ObservableObject {
    @Published var observation:NSKeyValueObservation?
}

struct WebView: UIViewRepresentable {
    var loadUrl:String
    @ObservedObject var observe = observable()
      
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
      
    func updateUIView(_ uiView: WKWebView, context: Context) {
        observe.observation = uiView.observe(\WKWebView.url, options: .new) { view, change in
            if let url = uiView.url {
                print("Page loaded: \(url)")
            }
        }
        uiView.load(URLRequest(url: URL(string: loadUrl)!))
    }
}
  
struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(loadUrl: "https://www.apple.com")
    }
}

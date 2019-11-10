//
//  ContentView.swift
//  SimpleWebView
//
//  Created by YuArai on 2019/11/10.
//  Copyright © 2019 NaturalArchitect. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        WebView(loadUrl: "https://www.apple.com")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  BuildingAppsOnTheCli
//
//  Created by Jason Watson on 25/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            let buildNumber = Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion") as! String
            
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("v\(buildNumber)")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

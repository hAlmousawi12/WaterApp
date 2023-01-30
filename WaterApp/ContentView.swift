//
//  ContentView.swift
//  WaterApp
//
//  Created by Hussain on 1/30/23.
//

import SwiftUI
import WatchConnectivity

struct ContentView: View {
    @AppStorage("total") var total: Int = 0
    @ObservedObject var data = PhoneDataModel.shared
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack {
                Text(String(format: "%.2fL", Double(data.watchCount)/1000.0))
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .padding()
                
                Text("\(data.watchCount) ml")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  MyHotel
//
//  Created by 木越湧太 on 2024/09/05.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("floorNumber") var floorNumber: Int?
    @State private var showFloorView = false
    @State var showAlert = false
    
    var body: some View {
        
        
        
        VStack {

        }
        VStack {
            if showFloorView == true {
                FloorView()
            } else {
                Button("2F") {
                    floorNumber = 2
                    showFloorView = true
                }
                Button("3F") {
                    floorNumber = 3
                    showFloorView = true
                }
                Button("4F") {
                    floorNumber = 4
                    showFloorView = true
                }
                Button("5F") {
                    floorNumber = 5
                    showFloorView = true
                }
                Button("6F") {
                    floorNumber = 6
                    showFloorView = true
                }
                Button("7F") {
                    floorNumber = 7
                    showFloorView = true
                }
                Button("8F") {
                    floorNumber = 8
                    showFloorView = true
                }
                Button("9F") {
                    floorNumber = 9
                    showFloorView = true
                }
            }
        }//VStack
        .onAppear {

        }
        
    }
}

#Preview {
    ContentView()
}

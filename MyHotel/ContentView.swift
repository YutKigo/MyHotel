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
    @State private var showDisplayView = false;
    @State var showAlert = false
    
    var body: some View {
        
        VStack {
            if showFloorView == true {
                FloorView()
            } else if showDisplayView == true {
                LostItemDisplayView()
            } else {
                VStack {
                    Text("メイン画面")
                        .font(.largeTitle)
                }
                
                VStack {
                    HStack {
                        Button {
                            floorNumber = 2
                            showFloorView = true
                        } label: {
                            Text("2F")
                                .font(.largeTitle)
                                .frame(width: 200, height: 200)
                                .background(.blue)
                                .foregroundColor(.white)
                        }
                        Button {
                            floorNumber = 3
                            showFloorView = true
                        } label: {
                            Text("3F")
                                .font(.largeTitle)
                                .frame(width: 200, height: 200)
                                .background(.blue)
                                .foregroundColor(.white)
                        }
                        Button {
                            floorNumber = 4
                            showFloorView = true
                        } label: {
                            Text("4F")
                                .font(.largeTitle)
                                .frame(width: 200, height: 200)
                                .background(.blue)
                                .foregroundColor(.white)
                        }
                    }
                    
                    HStack {
                        Button {
                            floorNumber = 5
                            showFloorView = true
                        } label: {
                            Text("5F")
                                .font(.largeTitle)
                                .frame(width: 200, height: 200)
                                .background(.blue)
                                .foregroundColor(.white)
                        }
                        Button {
                            floorNumber = 6
                            showFloorView = true
                        } label: {
                            Text("6F")
                                .font(.largeTitle)
                                .frame(width: 200, height: 200)
                                .background(.blue)
                                .foregroundColor(.white)
                        }
                        Button {
                            floorNumber = 7
                            showFloorView = true
                        } label: {
                            Text("7F")
                                .font(.largeTitle)
                                .frame(width: 200, height: 200)
                                .background(.blue)
                                .foregroundColor(.white)
                        }
                    }
                    
                    HStack {
                        Button {
                            floorNumber = 8
                            showFloorView = true
                        } label: {
                            Text("8F")
                                .font(.largeTitle)
                                .frame(width: 200, height: 200)
                                .background(.blue)
                                .foregroundColor(.white)
                        }
                        Button {
                            floorNumber = 9
                            showFloorView = true
                        } label: {
                            Text("9F")
                                .font(.largeTitle)
                                .frame(width: 200, height: 200)
                                .background(.blue)
                                .foregroundColor(.white)
                        }
                        
                    }
                }
                .padding()
                Button("忘れ物一覧表示画面") {
                    showDisplayView = true
                }
                .padding()
                .font(.largeTitle)
                .frame(width: 400, height: 100)
                .background(.blue)
                .foregroundColor(.white)
            }
        }//VStack
        .onAppear {

        }
        
    }
}

#Preview {
    ContentView()
}

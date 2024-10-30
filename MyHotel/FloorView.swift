//
//  FloorView.swift
//  MyHotel
//
//  Created by 木越湧太 on 2024/09/06.
//

import SwiftUI
import Firebase

struct FloorView: View {
    @AppStorage("floorNumber") var floorNumber = 2
    
    @State var showAlert = false
    @State var showSheet = false
    @State var showLISVsheet = false
    @State var selectedRoom = 0
    
    @State var status1 = ""
    @State var status2 = ""
    @State var status3 = ""
    @State var status4 = ""
    @State var status5 = ""
    @State var status6 = ""
    @State var status7 = ""
    @State var status8 = ""
    @State var status9 = ""
    @State var status10 = ""
    @State var status11 = ""
    @State var status12 = ""
    @State var status13 = ""
    @State var status14 = ""
    @State var status15 = ""
    

    let seisoutyuu = "清掃中"
    var body: some View {
        Text("\(floorNumber)F")
            .font(.largeTitle)
        
        VStack {
            HStack {
                Button {
                    showSheet = true
                    selectedRoom = floorNumber * 100 + 1
                } label: {
                    VStack {
                        Text("\(floorNumber)01")
                            .padding()
                        Text(status1)
                            .padding()
                    }
                    .font(.largeTitle)
                    .frame(width: 200, height: 200)
                    .background(setColorByStatus(status: status1))
                    .foregroundColor(.white)
                }
                .padding()
                
                Button {
                    showSheet = true
                    selectedRoom = floorNumber * 100 + 2
                } label: {
                    VStack {
                        Text("\(floorNumber)02")
                            .padding()
                        Text(status2)
                            .padding()
                    }
                    .font(.largeTitle)
                    .frame(width: 200, height: 200)
                    .background(setColorByStatus(status: status2))
                    .foregroundColor(.white)
                }
                .padding()
                
                Button {
                    showSheet = true
                    selectedRoom = floorNumber * 100 + 3
                } label: {
                    VStack {
                        Text("\(floorNumber)03")
                            .padding()
                        Text(status3)
                            .padding()
                    }
                    .font(.largeTitle)
                    .frame(width: 200, height: 200)
                    .background(setColorByStatus(status: status3))
                    .foregroundColor(.white)
                }
                .padding()
                
                Button {
                    showSheet = true
                    selectedRoom = floorNumber * 100 + 4
                } label: {
                    VStack {
                        Text("\(floorNumber)04")
                            .padding()
                        Text(status4)
                            .padding()
                    }
                    .font(.largeTitle)
                    .frame(width: 200, height: 200)
                    .background(setColorByStatus(status: status4))
                    .foregroundColor(.white)
                }
                .padding()
            }
            .padding()
            
            HStack {
                Button {
                    showSheet = true
                    selectedRoom = floorNumber * 100 + 5
                } label: {
                    VStack {
                        Text("\(floorNumber)05")
                            .padding()
                        Text(status5)
                            .padding()
                    }
                    .font(.largeTitle)
                    .frame(width: 200, height: 200)
                    .background(setColorByStatus(status: status5))
                    .foregroundColor(.white)
                }
                .padding()
                
                Button {
                    showSheet = true
                    selectedRoom = floorNumber * 100 + 6
                } label: {
                    VStack {
                        Text("\(floorNumber)06")
                            .padding()
                        Text(status6)
                            .padding()
                    }
                    .font(.largeTitle)
                    .frame(width: 200, height: 200)
                    .background(setColorByStatus(status: status6))
                    .foregroundColor(.white)
                }
                .padding()
                
                Button {
                    showSheet = true
                    selectedRoom = floorNumber * 100 + 7
                } label: {
                    VStack {
                        Text("\(floorNumber)07")
                            .padding()
                        Text(status7)
                            .padding()
                    }
                    .font(.largeTitle)
                    .frame(width: 200, height: 200)
                    .background(setColorByStatus(status: status7))
                    .foregroundColor(.white)
                }
                .padding()
                
                Button {
                    showSheet = true
                    selectedRoom = floorNumber * 100 + 8
                } label: {
                    VStack {
                        Text("\(floorNumber)08")
                            .padding()
                        Text(status8)
                            .padding()
                    }
                    .font(.largeTitle)
                    .frame(width: 200, height: 200)
                    .background(setColorByStatus(status: status8))
                    .foregroundColor(.white)
                }
                .padding()
            }
            .padding()
            
            HStack {
                Button {
                    showSheet = true
                    selectedRoom = floorNumber * 100 + 9
                } label: {
                    VStack {
                        Text("\(floorNumber)09")
                            .padding()
                        Text(status9)
                            .padding()
                    }
                    .font(.largeTitle)
                    .frame(width: 200, height: 200)
                    .background(setColorByStatus(status: status9))
                    .foregroundColor(.white)
                }
                .padding()
                
                Button {
                    showSheet = true
                    selectedRoom = floorNumber * 100 + 10
                } label: {
                    VStack {
                        Text("\(floorNumber)10")
                            .padding()
                        Text(status10)
                            .padding()
                    }
                    .font(.largeTitle)
                    .frame(width: 200, height: 200)
                    .background(setColorByStatus(status: status10))
                    .foregroundColor(.white)
                }
                .padding()
                
                Button {
                    showSheet = true
                    selectedRoom = floorNumber * 100 + 11
                } label: {
                    VStack {
                        Text("\(floorNumber)11")
                            .padding()
                        Text(status11)
                            .padding()
                    }
                    .font(.largeTitle)
                    .frame(width: 200, height: 200)
                    .background(setColorByStatus(status: status11))
                    .foregroundColor(.white)
                }
                .padding()
                
                Button {
                    showSheet = true
                    selectedRoom = floorNumber * 100 + 12
                } label: {
                    VStack {
                        Text("\(floorNumber)12")
                            .padding()
                        Text(status12)
                            .padding()
                    }
                    .font(.largeTitle)
                    .frame(width: 200, height: 200)
                    .background(setColorByStatus(status: status12))
                    .foregroundColor(.white)
                }
                .padding()
            }
            .padding()
            
            HStack {
                Button {
                    showSheet = true
                    selectedRoom = floorNumber * 100 + 13
                } label: {
                    VStack {
                        Text("\(floorNumber)13")
                            .padding()
                        Text(status13)
                            .padding()
                    }
                    .font(.largeTitle)
                    .frame(width: 200, height: 200)
                    .background(setColorByStatus(status: status13))
                    .foregroundColor(.white)
                }
                .padding()
                
                Button {
                    showSheet = true
                    selectedRoom = floorNumber * 100 + 14
                } label: {
                    VStack {
                        Text("\(floorNumber)14")
                            .padding()
                        Text(status14)
                            .padding()
                    }
                    .font(.largeTitle)
                    .frame(width: 200, height: 200)
                    .background(setColorByStatus(status: status14))
                    .foregroundColor(.white)
                }
                .padding()
                
                Button {
                    showSheet = true
                    selectedRoom = floorNumber * 100 + 15
                } label: {
                    VStack {
                        Text("\(floorNumber)15")
                            .padding()
                        Text(status15)
                            .padding()
                    }
                    .font(.largeTitle)
                    .frame(width: 200, height: 200)
                    .background(setColorByStatus(status: status15))
                    .foregroundColor(.white)
                }
                .padding()
                
                Button {
                    
                } label: {
                    Text("\(floorNumber)01")
                        .font(.largeTitle)
                        .frame(width: 200, height: 200)
                        .background(.white)
                        .foregroundColor(.white)
                }
                .padding()
            }//HStack
            .padding()
            
            Button {
                showLISVsheet = true
            } label: {
                Text("忘れ物・設備不良登録")
                    .font(.title)
                    .frame(width: 400, height: 60)
                    .background(.white)
                    .foregroundColor(.blue)
                
            }
            
            
            HStack {
                Button {
                    floorNumber = 2
                    showAlert = true
                    setStatusByRoomDataAllInOnece()
                } label: {
                    Text("2F")
                        .font(.largeTitle)
                }
                Button {
                    floorNumber = 3
                    showAlert = true
                    setStatusByRoomDataAllInOnece()
                } label: {
                    Text("3F")
                        .font(.largeTitle)
                }
                .padding()
                
                Button {
                    floorNumber = 4
                    showAlert = true
                    setStatusByRoomDataAllInOnece()
                } label: {
                    Text("4F")
                        .font(.largeTitle)
                }
                .padding()
                
                Button {
                    floorNumber = 5
                    showAlert = true
                    setStatusByRoomDataAllInOnece()
                } label: {
                    Text("5F")
                        .font(.largeTitle)
                }
                .padding()
                
                Button {
                    floorNumber = 6
                    showAlert = true
                    setStatusByRoomDataAllInOnece()
                } label: {
                    Text("6F")
                        .font(.largeTitle)
                }
                .padding()
                
                Button {
                    floorNumber = 7
                    showAlert = true
                    setStatusByRoomDataAllInOnece()
                } label: {
                    Text("7F")
                        .font(.largeTitle)
                }
                .padding()
                
                Button {
                    floorNumber = 8
                    showAlert = true
                    setStatusByRoomDataAllInOnece()
                } label: {
                    Text("8F")
                        .font(.largeTitle)
                }
                .padding()
                
                Button {
                    floorNumber = 9
                    showAlert = true
                    setStatusByRoomDataAllInOnece()
                } label: {
                    Text("9F")
                        .font(.largeTitle)
                }
                .padding()
            
            }
            
            
            
        }//VStack
        .onAppear {
            setStatusByRoomDataAllInOnece()
        }
        .alert("画面切り替え完了", isPresented: $showAlert) {
            Button("OK") {
                
            }
        } message: {
            let fn: Int = floorNumber
            Text("\(fn)F画面に切り替えました")
        }//alert
        .sheet(isPresented: $showSheet, onDismiss: {setStatusByRoomDataAllInOnece()}) {
            RoomSetupView(selectedRoom: $selectedRoom)
        }
        .sheet(isPresented: $showLISVsheet) {
            LostItemSettingView()
        }
        
        
        
    }
    
    //getRoomDataAllInOnceメソッドで一度に得た15個の客室情報をローカル変数status1~15に代入するsetStatusメソッド
    func setStatusByRoomDataAllInOnece() {
        getRoomDataAllInOnece(floorNumber: floorNumber) { roomsData in
            if roomsData.count >= 15 {
                status1 = roomsData[0]
                status2 = roomsData[1]
                status3 = roomsData[2]
                status4 = roomsData[3]
                status5 = roomsData[4]
                status6 = roomsData[5]
                status7 = roomsData[6]
                status8 = roomsData[7]
                status9 = roomsData[8]
                status10 = roomsData[9]
                status11 = roomsData[10]
                status12 = roomsData[11]
                status13 = roomsData[12]
                status14 = roomsData[13]
                status15 = roomsData[14]
            } else {
                print("roomsData の要素数が不足しています。要素数: \(roomsData.count)")
            }
        }
    }
}

//部屋ステータスによってボタンの表示を変える
func setColorByStatus (status: String) -> Color {
    if status == "清掃指示" {
        return Color.cleaningRequired
    }
    else if status == "清掃中" {
        return Color.cleaningInProgress
    }
    else if status == "点検中" {
        return Color.inspectionInProgress
    }
    else if status == "清掃済" {
        return Color.cleaningCompleted
    }
    else if status == "D/D" {
        return Color.black
    }
    else if status == "売止" {
        return Color.stopProvide
    }
    else if status == "空室" {
        return Color.gray
    }
    else {
        return Color.white
    }
}



#Preview {
    FloorView()
}


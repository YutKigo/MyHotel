//
//  FirebaseFunctions.swift
//  MyHotel
//
//  Created by 木越湧太 on 2024/09/25.
//

import Foundation
import SwiftUI
import Firebase

struct Room: Identifiable {
    var id: String
    var isAsign: Bool
    var status: String
}

class RoomViewModel: ObservableObject {
    @Published var room: Room?  // 部屋情報
    var roomNumber: String
    
    init(roomNumber: String = "") {
        self.roomNumber = roomNumber
    }
    
    func fetchRoomData() {
        // Firebase からデータを取得するロジック
        let ref = Database.database().reference(withPath: "rooms/\(roomNumber)")
        
        ref.observeSingleEvent(of: .value) { snapshot in
                    if let value = snapshot.value as? [String: Any],
                       let isAsign = value["isAsign"] as? Bool,
                       let status = value["status"] as? String {
                        DispatchQueue.main.async {
                            self.room = Room(id: self.roomNumber, isAsign: isAsign, status: status)
                        }
                    } else {
                        print("No valid data found for room number: \(self.roomNumber)")
                    }
                } withCancel: { error in
                    print("Error fetching room data: \(error.localizedDescription)")
                }
    }
    
    // RoomNumber を外部から設定するメソッド
    func setRoomNumber(_ roomNumber: String) {
        self.roomNumber = roomNumber
        fetchRoomData()
    }
}


/* ----------------- 客室情報取得メソッド ------------------------ */
/*
func getRoomInfomationFromFirebase(roomNumber: String) -> Room? {
    var room: Room?
    
    /* データベース内の固有の客室を探索して代入 */
    let ref = Database.database().reference(withPath: "rooms/\(roomNumber)")
    
    /* Firebaseのリアルタイム監視 */
    ref.observe(.value, with: { snapshot in
        if let value = snapshot.value as? [String: Any],
           let isAsign = value["isAsign"] as? Bool,
           let status = value["status"] as? String {
            // データを更新
            DispatchQueue.main.async {
                room = Room(id: roomNumber, isAsign: isAsign, status: status)
            }
        }
    })
    return room
}*/

/* ---------------- 以下status変更メソッド -------------------- */
//清掃指示へ変更
func changeStatusToCleaning_Required(roomNumber: Int) {
    let roomNumberString = String(roomNumber)
    let ref = Database.database().reference()

    // 変更するデータのみを辞書として定義
    let updateData: [String: Any] = [
        "status" : "清掃指示"
    ]

    // データベースの "rooms" ノードに対して部分的に更新
    ref.child("rooms").child(roomNumberString).updateChildValues(updateData) { error, _ in
        if let error = error {
            print("Error updating data: \(error)")
        } else {
            print("Status successfully updated!")
        }
    }
}

//清掃中へ変更
func changeStatusToCleaning_In_Progress(roomNumber: Int) {
    let roomNumberString = String(roomNumber)
    let ref = Database.database().reference()

    // 変更するデータのみを辞書として定義
    let updateData: [String: Any] = [
        "status" : "清掃中"
    ]

    // データベースの "rooms" ノードに対して部分的に更新
    ref.child("rooms").child(roomNumberString).updateChildValues(updateData) { error, _ in
        if let error = error {
            print("Error updating data: \(error)")
        } else {
            print("Status successfully updated!")
        }
    }
}

//点検中へ変更
func changeStatusToInspection_In_Progress(roomNumber: Int) {
    let roomNumberString = String(roomNumber)
    let ref = Database.database().reference()

    // 変更するデータのみを辞書として定義
    let updateData: [String: Any] = [
        "status" : "点検中"
    ]

    // データベースの "rooms" ノードに対して部分的に更新
    ref.child("rooms").child(roomNumberString).updateChildValues(updateData) { error, _ in
        if let error = error {
            print("Error updating data: \(error)")
        } else {
            print("Status successfully updated!")
        }
    }
}

//清掃済へ変更
func changeStatusToCleaning_Completed(roomNumber: Int) {
    let roomNumberString = String(roomNumber)
    let ref = Database.database().reference()

    // 変更するデータのみを辞書として定義
    let updateData: [String: Any] = [
        "status" : "清掃済"
    ]

    // データベースの "rooms" ノードに対して部分的に更新
    ref.child("rooms").child(roomNumberString).updateChildValues(updateData) { error, _ in
        if let error = error {
            print("Error updating data: \(error)")
        } else {
            print("Status successfully updated!")
        }
    }
}

//DDへ変更
func changeStatusToDont_Disturb(roomNumber: Int) {
    let roomNumberString = String(roomNumber)
    let ref = Database.database().reference()

    // 変更するデータのみを辞書として定義
    let updateData: [String: Any] = [
        "status" : "D/D"
    ]

    // データベースの "rooms" ノードに対して部分的に更新
    ref.child("rooms").child(roomNumberString).updateChildValues(updateData) { error, _ in
        if let error = error {
            print("Error updating data: \(error)")
        } else {
            print("Status successfully updated!")
        }
    }
}

/* ---------------- 以下condition変更メソッド -------------------- */
//アウト済へ変更
func changeConditionToCheckedOutRoom(roomNumber: Int) {
    let roomNumberString = String(roomNumber)
    let ref = Database.database().reference()

    // 変更するデータのみを辞書として定義
    let updateData: [String: Any] = [
        "condition" : "アウト済"
    ]

    // データベースの "rooms" ノードに対して部分的に更新
    ref.child("rooms").child(roomNumberString).updateChildValues(updateData) { error, _ in
        if let error = error {
            print("Error updating data: \(error)")
        } else {
            print("Status successfully updated!")
        }
    }
}

//滞在中へ変更
func changeConditionToStaying(roomNumber: Int) {
    let roomNumberString = String(roomNumber)
    let ref = Database.database().reference()

    // 変更するデータのみを辞書として定義
    let updateData: [String: Any] = [
        "condition" : "滞在中"
    ]

    // データベースの "rooms" ノードに対して部分的に更新
    ref.child("rooms").child(roomNumberString).updateChildValues(updateData) { error, _ in
        if let error = error {
            print("Error updating data: \(error)")
        } else {
            print("Status successfully updated!")
        }
    }
}

//売止へ変更
func changeConditionToStop_Providing(roomNumber: Int) {
    let roomNumberString = String(roomNumber)
    let ref = Database.database().reference()

    // 変更するデータのみを辞書として定義
    let updateData: [String: Any] = [
        "condition" : "売止"
    ]

    // データベースの "rooms" ノードに対して部分的に更新
    ref.child("rooms").child(roomNumberString).updateChildValues(updateData) { error, _ in
        if let error = error {
            print("Error updating data: \(error)")
        } else {
            print("Status successfully updated!")
        }
    }
}

//空室へ変更
func changeConditionToVacant(roomNumber: Int) {
    let roomNumberString = String(roomNumber)
    let ref = Database.database().reference()

    // 変更するデータのみを辞書として定義
    let updateData: [String: Any] = [
        "condition" : "空室"
    ]

    // データベースの "rooms" ノードに対して部分的に更新
    ref.child("rooms").child(roomNumberString).updateChildValues(updateData) { error, _ in
        if let error = error {
            print("Error updating data: \(error)")
        } else {
            print("Status successfully updated!")
        }
    }
}

/* 忘れ物登録用？
func setLostItem(roomNumber: Int, ) {
    let roomNumberString = String(roomNumber)
    let ref = Database.database().reference()

    // 変更するデータのみを辞書として定義
    let updateData: [String: Any] = [
        "item" : ""
    ]

    // データベースの "rooms" ノードに対して部分的に更新
    ref.child("rooms").child(roomNumberString).child("lostItem").updateChildValues(updateData) { error, _ in
        if let error = error {
            print("Error updating data: \(error)")
        } else {
            print("Status successfully updated!")
        }
    }
}*/


/*
//ベースへ変更
func changeStatusToBase(roomNumber: Int) {
    let roomNumberString = String(roomNumber)
    let ref = Database.database().reference()

    // 部屋情報を辞書として定義
    let roomData: [String: Any] = [
        "isAsign": false,
        "status" : "vacant"
    ]

    // データベースの "rooms" ノードに書き込み
    ref.child("rooms").child(roomNumberString).setValue(roomData) { error, _ in
        if let error = error {
            print("Error writing data: \(error)")
        } else {
            print("Data successfully written!")
        }
    }
}
*/
func getRoomDataAllInOnece(floorNumber: Int, completion: @escaping ([String]) -> Void) {
    var returnString: [String] = Array(repeating: "", count: 15) // 初期値として空の文字列 15 個を用意
    let ref = Database.database().reference()
    let group = DispatchGroup() // DispatchGroup を使用して複数の非同期処理を待機

    for i in 1...15 {
        group.enter() // 非同期処理をグループに追加
        
        ref.child("rooms/\(floorNumber * 100 + i)/status").getData { (error, snapshot) in
            defer { group.leave() } // 処理が終了したらグループから出る
            if let error = error {
                print("データ取得エラー: \(error)")
            } else if let snapshot = snapshot, snapshot.exists() {
                if let status = snapshot.value as? String {
                    returnString[i - 1] = status // インデックスを調整して格納
                } else {
                    print("ステータスの型が不正です")
                }
            } else {
                print("データが存在しません")
            }
        }
    }

    // 全ての非同期処理が終了した後に結果を返す
    group.notify(queue: .main) {
        completion(returnString)
    }
}


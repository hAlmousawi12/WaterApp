//
//  datamodel.swift
//  WaterApp Watch App
//
//  Created by Hussain on 1/30/23.
//

import Foundation
import WatchConnectivity
class WatchDataModel : NSObject, WCSessionDelegate, ObservableObject {
    static let shared = WatchDataModel()
    let session = WCSession.default
    @Published var watchCount : Int = 0
    override init() {
        super.init()
        if WCSession.isSupported() {
            session.delegate = self
            session.activate()
        } else {
            print("ERROR: Watch session not supported")
        }
    }
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        if let error = error {
            print("session activation failed with error: \(error.localizedDescription)")
            return
        }
    }
}

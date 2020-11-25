//
//  ConnnectFourViewModel.swift
//  Connect4
//
//  Created by Golden Thumb on 2020-11-23.
//

import SwiftUI
import MultipeerConnectivity

class ConnnectFourViewModel: NSObject, ObservableObject {
    @Published private var game = ConnectFour()
    
    var peerId: MCPeerID
    var session: MCSession
    var nearbyServiceAdvertiser: MCNearbyServiceAdvertiser?
    
    override init() {
        peerId = MCPeerID(displayName: UIDevice.current.name)
        session = MCSession(peer: peerId, securityIdentity: nil, encryptionPreference: .required)
        super.init()
        session.delegate = self
    }
    
    func advertise() {
        nearbyServiceAdvertiser = MCNearbyServiceAdvertiser(peer: peerId, discoveryInfo: nil, serviceType: "gt-conn4")
        nearbyServiceAdvertiser?.delegate = self
        nearbyServiceAdvertiser?.startAdvertisingPeer()
    }
    
    func invite() {
        let browser = MCBrowserViewController(serviceType: "gt-conn4", session: session)
        browser.delegate = self
        UIApplication.shared.windows.first?.rootViewController?.present(browser , animated: true)
    }
    
    func reset() {
        game.reset()
    }
    
    func pieceAt(col: Int, row: Int) -> ConnectFour.Piece? {
        game.pieceAt(col: col, row: row)
    }
    
    func dropAt(col: Int) {
        game.dropAt(col: col)
    }
}

extension ConnnectFourViewModel: MCSessionDelegate {
    func session(_ session: MCSession, peer peerID: MCPeerID, didChange state: MCSessionState) {
        switch state {
        case .connecting:
            print("\(peerId) state: connecting")
        case .connected:
            print("\(peerId) state: connected")
        case .notConnected:
            print("\(peerId) state: not connected")
        @unknown default:
            print("\(peerId) state: unknown")
        }
        
        
    }
    
    func session(_ session: MCSession, didReceive data: Data, fromPeer peerID: MCPeerID) {
        
    }
    
    func session(_ session: MCSession, didReceive stream: InputStream, withName streamName: String, fromPeer peerID: MCPeerID) {
        
    }
    
    func session(_ session: MCSession, didStartReceivingResourceWithName resourceName: String, fromPeer peerID: MCPeerID, with progress: Progress) {
        
    }
    
    func session(_ session: MCSession, didFinishReceivingResourceWithName resourceName: String, fromPeer peerID: MCPeerID, at localURL: URL?, withError error: Error?) {
        
    }
}

extension ConnnectFourViewModel: MCNearbyServiceAdvertiserDelegate {
    func advertiser(_ advertiser: MCNearbyServiceAdvertiser, didReceiveInvitationFromPeer peerID: MCPeerID, withContext context: Data?, invitationHandler: @escaping (Bool, MCSession?) -> Void) {
        invitationHandler(true, session)
    }
}

extension ConnnectFourViewModel: MCBrowserViewControllerDelegate {
    func browserViewControllerDidFinish(_ browserViewController: MCBrowserViewController) {
        browserViewController.dismiss(animated: true)
    }
    
    func browserViewControllerWasCancelled(_ browserViewController: MCBrowserViewController) {
        browserViewController.dismiss(animated: true)
    }
}

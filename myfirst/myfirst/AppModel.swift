//
//  AppModel.swift
//  myfirst
//
//  Created by Z QQ on 2024/9/23.
//

import SwiftUI

/// Maintains app-wide state
@MainActor
@Observable
class AppModel : ObservableObject{
    let immersiveSpaceID = "ImmersiveSpace"
    enum ImmersiveSpaceState {
        case closed
        case inTransition
        case open
    }
    var immersiveSpaceState = ImmersiveSpaceState.closed
}

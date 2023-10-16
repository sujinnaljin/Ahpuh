//
//  PinButtonView.swift
//  Ahpuh
//
//  Created by 강수진 on 10/17/23.
//

import SwiftUI

struct PinButtonView: View {
    
    let swimmingPoolName: String
    let pinImageName: (isToPin: String, isToUnpin: String)
    @Binding var pinnedSwimmingPoolsKeys: [String]
    
    var body: some View {
        let isPinnedSwmmingPool = pinnedSwimmingPoolsKeys.contains(swimmingPoolName)
        Button {
            if isPinnedSwmmingPool {
                pinnedSwimmingPoolsKeys.removeAll { pinnedSwimmingPoolsKey in
                    pinnedSwimmingPoolsKey == swimmingPoolName
                }
            } else {
                pinnedSwimmingPoolsKeys.append(swimmingPoolName)
            }
        } label: {
            let pinImageName = isPinnedSwmmingPool ? pinImageName.isToUnpin : pinImageName.isToPin
            Image(systemName: pinImageName)
        }
        .tint(.yellow)
    }
}

#Preview {
    let swimmingPools = MockFileKey.defaultValue
    let pinButtonnView = PinButtonView(swimmingPoolName: swimmingPools.first!.name!, 
                                       pinImageName: (isToPin: "pin", isToUnpin: "pin.slash"),
                                       pinnedSwimmingPoolsKeys: .constant(["올림픽 공원 수영장"]))
    return pinButtonnView
}

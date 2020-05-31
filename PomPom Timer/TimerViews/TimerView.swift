//
//  Timer.swift
//  PomPom TImer
//
//  Created by Emad Rahman on 2020-05-24.
//  Copyright © 2020 Emad Rahman. All rights reserved.
//

import SwiftUI

struct TimerView: View {
    var timerState: TimerState
    
    var body: some View {
        NavigationView {
            ZStack {
                ClockView()
                TimerTextView(timerState: timerState)
            }
            .navigationBarTitle("PomPom Timer", displayMode: .inline)
        }
    }
}

struct Timer_Previews: PreviewProvider {
    static var previews: some View {
        TimerView(timerState: TimerState.init())
    }
}

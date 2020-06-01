//
//  Timer.swift
//  PomPom TImer
//
//  Created by Emad Rahman on 2020-05-24.
//  Copyright © 2020 Emad Rahman. All rights reserved.
//

import SwiftUI

struct TimerView: View {
    @EnvironmentObject var timerState: TimerState
    
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    ClockView()
                    TimerTextView()
                }
                
                HStack {
                    Button(action: {
                        self.timerState.started.toggle()
                    }) {
                        if !self.timerState.started {
                            Text("Start")
                        }
                        else{
                            Text("Stop")
                        }
                    }
                    .padding(.trailing)
                
                    Button(action: {
                        self.timerState.reset()
                    }) {
                        Text("Reset")
                    }
                    .padding(.leading)
                }
                .padding(.all)
            }
            .navigationBarTitle("PomPom Timer", displayMode: .inline)
        }
    }
}

struct Timer_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
            .environmentObject(TimerState())
    }
}

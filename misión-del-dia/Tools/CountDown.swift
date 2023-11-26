//
//  CountDown.swift
//  misión-del-dia
//
//  Created by jordan on 26/11/2023.
//


import SwiftUI

struct CountdownView: View {
    @State private var remainingSeconds: Int

    init(remainingSeconds: Int) {
        self.remainingSeconds = remainingSeconds
    }

    var body: some View {
        VStack {
            Text("\(formattedTime(remainingSeconds))")
                .fontWeight(.bold)
                .foregroundColor(Color.red.opacity(0.8))
                .padding(.top, 36)
        }
        .onAppear {
            startCountdown()
        }
    }

    private func startCountdown() {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            if remainingSeconds > 0 {
                remainingSeconds -= 1
            } else {
                timer.invalidate()
            }
        }
    }

    private func formattedTime(_ seconds: Int) -> String {
        let hours = seconds / 3600
        let minutes = (seconds % 3600) / 60
        let seconds = seconds % 60

        return String(format: "%02d:%02d:%02d", hours, minutes, seconds)
    }
}

//
//  HomeView.swift
//  RestartAppSwiftUI
//
//  Created by Ege Aydemir on 24.09.2022.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onboarding") var isOnboardingViewActive : Bool = false
    var body: some View {
        VStack(spacing: 20){
            //Header:
            Spacer()
            Image("character-2")
                .resizable()
                .scaledToFit()
                .padding()
            //Center:
            Text("The time that leads to mastery is dependent on the indensity of our focus.")
                .font(.title3)
                .fontWeight(.light)
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
                .padding()
            //Footer:
            //: VSTACK
            Spacer()
            Button(action: {
                isOnboardingViewActive = true
            }){
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                
                Text("Restart")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large
            )
        }
    }
    struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
            HomeView()
        }
    }
}
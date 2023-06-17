//
//  OnboardingView.swift
//  HUEY
//


import SwiftUI

struct OnboardingView: View {
    
    //App storage for holding the current page
    @AppStorage("currentPage") var currentPage = 1
    //App storage for holding if user has done onboarding
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    @State static var userName = ""
    
    var body: some View {
        ZStack(alignment: .top) {
            
            if currentPage == 1 {
                OnboardingScreenView(title: "We'll Help Your Plant Grow.", detail: "Are you a new plant owner? Not sure which nutrients your plants need? Our customized plant guide will help you on your plant parent journey!", image: "educated-image")
            }
            if currentPage == 2 {
                OnboardingScreenView(title: "Easy 2 Use.", detail: "Find your plant in the library via the 6 plant categories!", image: "intuitive-image")
            }
            if currentPage == 3 {
                OnboardingScreenView(title: "Search Friendly.", detail: "Thinking of buying a new plant species? Search for it using our AI search system to get some personalized plant advice!", image: "search-friendly-image")
            }
//            if currentPage == 4 {
//                OnboardingScreenView(title: "Get Started.", detail:"", image: "search-friendly-image")
//                TextField("Your Name", text: OnboardingView.$userName)
//            }
        }
        .padding(.bottom, 0)
        .overlay(
            Button(action: {
                withAnimation(.easeInOut) {
                    if currentPage <= totalPages {
                        currentPage += 1
                    }
                    if currentPage == 4 {
                        isOnboarding = false
                    }
                }
            }, label: {
                Image(systemName: "chevron.right")
                    .font(.system(size: 25, weight: .semibold))
                    .foregroundColor(.white)
                    .frame(width: 70, height: 70)
                    .background(Color("Primary Green"))
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        ZStack {
                            Circle()
                                .stroke(Color("Primary Green").opacity(0.1), lineWidth: 3)
                            Circle()
                                .trim(from: 0, to: CGFloat(currentPage) / CGFloat(totalPages))
                                .stroke(Color("Primary Green"), lineWidth: 3)
                                .rotationEffect(.init(degrees: -90))
                        }
                        .padding(-15)
                    )
                    .padding(.top, 680)
                
            })
        )
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

var totalPages = 3

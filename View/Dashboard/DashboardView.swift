//
//  DashboardView.swift
//  HUEY


import SwiftUI

struct DashboardView: View {
    @State static var userName = ""
    @State var index = "Dashboard"
    
    var body: some View{
        NavigationView {
                ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 18) {
                    VStack(alignment: .leading, spacing: 0) {
                        HStack{
                            Text("Hello Gardner")
                                .font(Font.custom("Kollektif-Bold", size: 30))
                                .foregroundColor(.black)
                                .accessibilityIdentifier("greetings")
                            Text("\(OnboardingView.userName)")
                                .font(Font.custom("Kollektif-Bold", size: 30))
                                .foregroundColor(Color("Primary Green"))
                                .accessibilityIdentifier("greetings-name")
                            Spacer()
                        }
                        .padding(EdgeInsets(.init(top: 0, leading: 35, bottom: 0, trailing: 35)))
                        
                        TipListView()
                            .padding(.leading, 5)
                            .padding(.bottom, 50)
                        
                        VStack(spacing: 20) {
                            HStack {
                                Text("Categories")
                                    .font(Font.custom("Kollektif-Bold", size: 30))
                                    .foregroundColor(.black)
                                    .multilineTextAlignment(.center)
                                Spacer()
                            }
                            .padding(.horizontal, 20)
//                                                    ZStack {
//                                                        FlowerPlantListView().opacity(self.index == "Flowering" ? 1 : 0)
//                                                        ConiferPlantListView().opacity(self.index == "Conifers" ? 1 : 0)
//                                                        FernPlantListView().opacity(self.index == "Ferns" ? 1 : 0)
//                                                        MossPlantListView().opacity(self.index == "Moss" ? 1 : 0)
//                                                        VegetablesView().opacity(self.index == "Moss" ? 1 : 0)
//                                                    }
                            
                            HStack {
                                NavigationLink(destination: VegetablesView()) {
                                    HStack {
                                        HStack() {
                                            VStack(alignment: .center, spacing: 25) {
                                                Image("fern-category")
                                                    .renderingMode(.original)
                                                    .resizable()
                                                    .scaledToFill()
                                                    .frame(width: 100, height: 100, alignment: .center)
                                                
                                                Text("vegetables.")
                                                    .font(Font.custom("Kollektif-Bold", size: 16))
                                                    .foregroundColor(.white)
                                                    .textCase(.lowercase)
                                                    .frame(width: 120, height: 40, alignment: .leading)
                                                    .lineSpacing(3.0)
                                                    .padding(.leading, 20)
                                            }
                                        }
                                    }
                                    
                                    .frame(maxWidth: 160, maxHeight: 210)
                                    .background(Color("Primary Green"))
                                    .cornerRadius(40)
                                    
                                }
                                
                                NavigationLink(destination: FruitView()) {
                                    HStack {
                                        HStack() {
                                            VStack(alignment: .center, spacing: 10) {
                                                Image("fern-category")
                                                    .renderingMode(.original)
                                                    .resizable()
                                                    .scaledToFill()
                                                    .frame(width: 100, height: 100, alignment: .center)
                                                
                                                Text("fruits.")
                                                    .font(Font.custom("Kollektif-Bold", size: 16))
                                                    .foregroundColor(.white)
                                                    .textCase(.lowercase)
                                                    .frame(width: 122, height: 40, alignment: .leading)
                                                    .lineSpacing(3.0)
                                                    .padding(.top, 10)
                                                    .padding(.top, 0)
                                            }
                                        }
                                    }
                                    
                                    .frame(maxWidth: 160, maxHeight: 210)
                                    .background(Color("Primary Green"))
                                    .cornerRadius(40)
                                    
                                }
                            }
                            .padding(.horizontal, 20)
                            
                            NavigationLink(destination: FlowerPlantListView()) {
                                HStack {
                                    HStack() {
                                        VStack(alignment: .center, spacing: 25) {
                                            Image("flower-category")
                                                .renderingMode(.original)
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: 100, height: 100, alignment: .center)
                                            
                                            Text("flowering Plants.")
                                                .font(Font.custom("Kollektif-Bold", size: 16))
                                                .foregroundColor(.white)
                                                .textCase(.lowercase)
                                                .frame(width: 120, height: 40, alignment: .leading)
                                                .lineSpacing(3.0)
                                                .padding(.leading, 20)
                                        }
                                    }
                                    .frame(maxWidth: 160, maxHeight: 210)
                                    .background(Color("Primary Green"))
                                    .cornerRadius(40)
                                }
                                
                                NavigationLink(destination: ConiferPlantListView()) {
                                    HStack() {
                                        VStack(alignment: .center, spacing: 10) {
                                            Image("conifer-category")
                                                .renderingMode(.original)
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: 100, height: 100, alignment: .center)
                                            
                                            Text("conifers, cycads and allies")
                                                .font(Font.custom("Kollektif-Bold", size: 16))
                                                .foregroundColor(.white)
                                                .textCase(.lowercase)
                                                .frame(width: 122, height: 40, alignment: .leading)
                                                .lineSpacing(3.0)
                                                .padding(.top, 0)
                                            
                                        }
                                    }
                                }
                                .frame(maxWidth: 160, maxHeight: 210)
                                .background(Color("Primary Green"))
                                .cornerRadius(40)
                                
                            }
                            NavigationLink(destination: FernPlantListView()) {
                                HStack {
                                    HStack() {
                                        VStack(alignment: .center, spacing: 10) {
                                            Image("fern-category")
                                                .renderingMode(.original)
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: 100, height: 100, alignment: .center)
                                                .padding(.top, 10)
                                            
                                            Text("ferns, and fern allies.")
                                                .font(Font.custom("Kollektif-Bold", size: 16))
                                                .foregroundColor(.white)
                                                .textCase(.lowercase)
                                                .frame(width: 140, height: 40, alignment: .leading)
                                                .lineSpacing(3.0)
                                                .padding(.top, 10)
                                                .padding(.leading, 30)
                                        }
                                    }
                                }
                            
                                .frame(maxWidth: 160, maxHeight: 210)
                                .background(Color("Primary Green"))
                                .cornerRadius(40)
                                
                                
                                NavigationLink(destination: MossPlantListView()) {
                                    HStack() {
                                        VStack(alignment: .center, spacing: 10) {
                                            Image("moss-category")
                                                .renderingMode(.original)
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: 100, height: 100, alignment: .center)
                                                .padding(.top, 10)
                                            
                                            Text("mosses and hornworts.")
                                                .font(Font.custom("Kollektif-Bold", size: 16))
                                                .foregroundColor(.white)
                                                .textCase(.lowercase)
                                                .frame(width: 140, height: 40, alignment: .leading)
                                                .lineSpacing(3.0)
                                                .padding(.top, 10)
                                                .padding(.leading, 30)
                                        }
                                    }
                                    
                                }
                                
                                
                                .frame(maxWidth: 160, maxHeight: 210)
                                .background(Color("Primary Green"))
                                .cornerRadius(40)
                                
                            }
                        }
                            .padding(EdgeInsets(.init(top: 0, leading: 35, bottom: 0, trailing: 35)))
                            .frame(height: 500)
                        }
                        .frame(maxWidth: .infinity)
                        .padding(EdgeInsets(.init(top: 20, leading: 0, bottom: 0, trailing: 0)))
                    }
                    
                }
            }
        }
    }
    
    struct DashboardView_Previews: PreviewProvider {
        static var previews: some View {
            DashboardView()
        }
    }
    
    var dashboardItems = ["Vegetables", "Fruits", "Flowering", "Conifers", "Moss", "Ferns"]
    


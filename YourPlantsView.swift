////
////  YourPlantsView.swift
////  HUEY
////
////  Created by xen0s on 6/16/23.
////
//
import SwiftUI

struct YourPlantsView: View {
    @State var isSearching = false
    @State var searchText = ""
    
    var yourPlants: [Plant] = [] // Add yourPlants array
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    HStack {
                        Text("Your Plants")
                            .font(Font.custom("Kollektif-Bold", size: 28))
                            .foregroundColor(.black)
                        Spacer()
                    }
                    .padding(.leading, 30)
                    .padding(.trailing, 30)
                    
                    SearchBarView(searchText: $searchText, isSearching: $isSearching)
                        .padding(.horizontal, 30)
                        .padding(.bottom, 10)
                        .padding(.top, 10)

                    Text("Uh oh. There are no plants in your greenhouse!")
                    
          
//                    LazyVStack() {
//                        ForEach(yourPlants.filter({searchText.isEmpty ? true : $0.name.contains(searchText) || $0.type.contains(searchText)})) { item in
//                                NavigationLink(destination: PlantDetailView(plant: item)) {
//                                    PlantRowView(plant: item)
//                                        .padding(.vertical, 5)
//                                }
//
//                        }
//                    }
                    ForEach(yourPlants.filter({searchText.isEmpty ? true : $0.name.contains(searchText) || $0.type.contains(searchText)})) { item in
                        NavigationLink(destination: PlantDetailView(plant: item)) {
                            PlantRowView(plant: item)
                                .padding(.vertical, 5)
                        }
                    }
                }
            }
            .padding(.top, 20)
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
        .accentColor(.white)
    }
    func addPlantstoView(plant: Plant) {
        
        // Print the names of all plants in yourPlants
        yourPlants.forEach { plant in
            print(plant.name)
        }
    }
}
//struct YourPlantListView_Previews: PreviewProvider {
//    static var previews: some View {
//        YourPlantView()
//            .previewLayout(.sizeThatFits)
//    }
//}

//
//  PlantDetailView.swift
// HUEY

import SwiftUI

struct PlantDetailView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var yourPlants: [Plant] = []
    
    //Initialiser for plant
    var plant: Plant
    
    init(plant: Plant) {
            self.plant = plant
            
            // Check if the plant is already in yourPlants array
            if plantIsInYourPlants(plant: plant) {
                // If it is, add it to yourPlants array
                yourPlants.append(plant)
            }
        }
    
    var body: some View {
        VStack {
            ZStack(alignment: .top) {
                Image(plant.image)
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: UIScreen.main.bounds.width, height: 500, alignment: .top)
                
                VStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 50, style: .continuous)
                            .foregroundColor(.white)
                            .frame(width: UIScreen.main.bounds.width, height: 580, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .padding(.top, 360)
                        VStack(alignment: .leading, spacing: 20) {
                            Text(plant.name)
                                .font(Font.custom("Kollektif-Bold", size: 26))
                                .foregroundColor(Color("Primary Green"))
                                .textCase(.lowercase)
                            Text(plant.description)
                                .font(Font.custom("Kollektif", size: 18))
                                .foregroundColor(.black)
                                .lineSpacing(3)
                            HStack {
                                GroupBox(label:
                                            Text("Type")
                                            .font(Font.custom("Kollektif-Bold", size: 16))
                                            .foregroundColor(Color("Primary Green"))
                                            .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                                            .padding(.leading, 25)
                                            .padding(.top, 18),
                                         content: { HStack {
                                            Text(plant.type)
                                                .font(Font.custom("Kollektif", size: 15))
                                                .foregroundColor(Color("Primary Green"))
                                                .padding(.top, 20)
                                                .padding(.leading, 4)
                                                .textCase(.lowercase)
                                            Spacer()
                                         }
                                         })
                                    .frame(width: 150, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .cornerRadius(20)
                                    .groupBoxStyle(PlantDetailGroupBoxMuted())
                                
                                GroupBox(label:
                                            Text("Light")
                                            .font(Font.custom("Kollektif-Bold", size: 16))
                                            .foregroundColor(Color("Primary Green"))
                                            .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                                            .padding(.leading, 26)
                                            .padding(.top, 18),
                                         content: { HStack {
                                            Text(plant.light)
                                                .font(Font.custom("Kollektif", size: 15))
                                                .foregroundColor(Color("Primary Green"))
                                                .padding(.top, 20)
                                                .padding(.leading, 4)
                                                .textCase(.lowercase)
                                            Spacer()
                                         }
                                         })
                                    .frame(width: 155, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .padding(.leading, 5)
                                    .cornerRadius(20)
                                    .groupBoxStyle(PlantDetailGroupBoxMuted())
                            }
                            VStack {
                                GroupBox(label:
                                            Text("Propagation")
                                            .font(Font.custom("Kollektif-Bold", size: 16))
                                            .foregroundColor(Color("Primary Green"))
                                            .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                                            .padding(.leading, 25)
                                            .padding(.top, 18),
                                         content: { HStack {
                                            Text(plant.propagation)
                                                .font(Font.custom("Kollektif", size: 15))
                                                .foregroundColor(Color("Primary Green"))
                                                .padding(.top, 20)
                                                .padding(.leading, 4)
                                                .textCase(.lowercase)
                                            Spacer()
                                         }
                                         })
                                    .frame(width: 320, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .cornerRadius(20)
                                    .padding(.top, -6)
                                    .groupBoxStyle(PlantDetailGroupBoxMuted())
                                
                                GroupBox(label:
                                            Text("Scientific Name")
                                            .font(Font.custom("Kollektif-Bold", size: 16))
                                            .foregroundColor(.white)
                                            .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                                            .padding(.leading, 25)
                                            .padding(.top, 18),
                                         content: { HStack {
                                            Text(plant.scientificName)
                                                .font(Font.custom("Kollektif", size: 15))
                                                .foregroundColor(.white)
                                                .padding(.top, 20)
                                                .padding(.leading, 4)
                                                .textCase(.lowercase)
                                            Spacer()
                                         }
                                         })
                                    .frame(width: 320, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .cornerRadius(20)
                                    .padding(.top, 6)
                                    .groupBoxStyle(PlantDetailGroupBoxGreen())
                            }
                            HStack {
                                                Button(action: {
                                                    togglePlantSelection(plant: plant)
                                                }) {
                                                    Text("I Have This Plant!")
                                                        .font(.headline)
                                                        .padding()
                                                        .foregroundColor(.gray)
                                                        .background(plantIsInYourPlants(plant: plant) ? Color.green : Color.white)
                                                        .cornerRadius(10)
                                                }
                                            }
                        }
                        .frame(width: 320, height: 380, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding(.top, 260)
                    }
                }
            }
            Spacer()
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
    // Function to check if a plant is in yourPlants array
       func plantIsInYourPlants(plant: Plant) -> Bool {
           return yourPlants.contains { $0.id == plant.id }
       }
       
       // Function to toggle plant selection
       func togglePlantSelection(plant: Plant) {
           if plantIsInYourPlants(plant: plant) {
               // If plant is already selected, remove it from yourPlants array
               yourPlants.removeAll { $0.id == plant.id }
           } else {
               // If plant is not selected, add it to yourPlants array
               yourPlants.append(plant)
           }
       }
}

struct PlantDetailGroupBoxMuted: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.content
            .frame(maxWidth: .infinity)
            .padding(20)
            .background(RoundedRectangle(cornerRadius: 20).fill(Color("Muted Green")))
            .overlay(configuration.label.padding(.leading, 0), alignment: .topLeading)
    }
}

struct PlantDetailGroupBoxGreen: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.content
            .frame(maxWidth: .infinity)
            .padding(20)
            .background(RoundedRectangle(cornerRadius: 20).fill(Color("Primary Green")))
            .overlay(configuration.label.padding(.leading, 0), alignment: .topLeading)
    }
}

struct PlantDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlantDetailView(plant: Plants[1])
    }
}



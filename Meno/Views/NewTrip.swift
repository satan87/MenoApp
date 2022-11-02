//
//  NewTrip.swift
//  Meno
//
//  Created by Giulio Ammendola on 24/10/2022.
//

import SwiftUI
import CoreLocation

struct NewTrip: View {
    
    
    //Observe the trip model
    @ObservedObject var tripViewModel: TripViewModel
    
    @Binding var isPresenting: Bool
    
    @State var newTrip = blankTrip()
    
    //Temporary variables to create a new array element in the model
    //It should be possible to avoid this and just use the elements of the model but I am not sure how
//    @State private var destinationValue: String = ""
    
//    @State private var departureDateValue =  Date()
    
//    @State private var returnDateValue = Date()
    
//    @State private var selectedBag = BagCapacity.L30
    
    var vehicles = ["airplane", "car", "tram", "ferry"] // -> You need to create an enum
    
    //we could use this for something, not currently used
//    @FocusState private var destinationIsFocused: Bool
    
    //resets values of text field
//    func reset() {
//        destinationValue = ""
//    }
    
    //returns number of seconds that the trip will take, need to convert to days somehow
    var tripLength: Int {
        
        let delta = newTrip.departureDate.distance(to: newTrip.returnDate)
        return Int(delta)
    }
    
    
    var body: some View {
        
        VStack {
            
            Text(newTrip.destination)
            
            VStack{
                
                Form{
                    //Destination (potentially a search field)
                    Section{
                        TextField("Destination", text: $newTrip.destination)
                    }
                header: {
                    Text("Where to?")
                }
                    
                    //Departure Date (potentially a draggable calendar)
                    Section{
                        
                        VStack{
                            
                            HStack{
                                DatePicker(
                                    "Departure",
                                    selection: $newTrip.departureDate,
                                    displayedComponents: [.date]
                                )
                                .datePickerStyle(.automatic)
                            }
                            
                            HStack{
                                DatePicker(
                                    "Return",
                                    selection: $newTrip.returnDate,
                                    displayedComponents: [.date]
                                )
                                .datePickerStyle(.automatic)
                            }
                        }
                    }
                header: {
                    Text("When's your trip?")
                }
                                               
                    Section{
                        Picker("Choose Vehicle", selection: $newTrip.icon) {
                            ForEach(vehicles, id: \.self) {
                                Image(systemName: $0)
                            }
                        }
                        .pickerStyle(.segmented)
                        
//                        HStack{
//                            Spacer()
//                            Text("\(selectedVehicle.capitalized)")
//                            Spacer()
//                        }
                    }
                header: {
                    Text("How are you going?")
                    }
                    
                    Section{
//                        Picker("Choose Bag size", selection: $selectedBag) {
//
//                            ForEach(BagCapacity.allCases, id: \.self) { bag in
//                                BackpackRow(bag: bag)
//                            }
//                        }
//                        .pickerStyle(.inline)
//                        .labelsHidden()

                    }
                header: {
                    Text("Which backpack?")
                    }
                }
             
            }
            .navigationBarTitle("Add New Trip", displayMode: .inline)
            .toolbar {
                ToolbarItem {
                    
                    Button(action: {
                        
                        tripViewModel.appendTrip(trip: newTrip)
                        isPresenting = false
                        
                    }, label: {
                        Text("Done")
                    })
                    
                }
                
                ToolbarItem(placement: .navigationBarLeading) {

                    Button(action: {
                        isPresenting = false
                    }, label: {
                        Text("Cancel")
                    })

                }
         }
        }
    }
}

//struct NewTrip_Previews: PreviewProvider {
//    static var previews: some View {
//        NewTrip(tripViewModel: TripViewModel())
//    }
//}

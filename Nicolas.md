#  Nicolas

## 1 - Use environment variable

in MenoApp
@ObservedObject var tripViewModel = TripViewModel()

then in the view you want to access your model
@EnvironmentObject var tripViewModel: TripViewModel

-> that way, all view can share the same model


## 2 - Create Enums for bag

See BagCapacity.swift


## 3 - Trip: Change Bagpack to a list of Bagpack

### We need to define an item.

I took about the same structure as you

struct MyItem {
    let name: String
}

and I added an CategoryEnum (same file).

I also added an enum to store predefined Item.

It is a good way to have some info at the start of your application


### We need an object for the backpack.

The bacgpack will have a size, and a list of item



If you want to have multiples bacgpack for a trip, you need a list


## 4 - Re do Items List

I update the view to :

Display all the items in the backpack

Add / Remove Item when we click

ATTENTION : 
    For now, when you change items in bacgpack, it will not be changes in the ViewModel


## 5 - Add new Trip

I added a function to create an empty Trip

Then in the view I map the control to each field

After I just have to add it to the viewModel

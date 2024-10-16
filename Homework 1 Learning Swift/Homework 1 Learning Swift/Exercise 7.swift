//
//  Ecercise 7.swift
//  Homework 1 Learning Swift
//
//  Created by Diego Marillan Cuevas on 10/15/24.
//

//a) What exactly is the Info.plist file?

//Xcode names this file Info.plist and adds it to your project as a source file that you can edit.
//Xcode creates one information property list for each target in the project folder.


//b) How can we use images in an app and how to provide different images for devices
//with different screen resolution?

//We can add them to the Assets.xcassets folder, which is a managed container in Xcode.

//c) How can we configure the icon for an app?

//Add app icon images to the AppIcon folder within Assets.xcassets.
//The AppIcon requires images in specific sizes depending on the device
//Xcode automatically maps the icon sizes to the correct devices based on the sizes provided.
//You can configure this by opening the project settings in Xcode, selecting the General tab, and scrolling to the App Icons and Launch Images section.


//d) How can we vary the color (for example) in respect to the device orientation?

//override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
//if UIDevice.current.orientation.isLandscape {
  //  view.backgroundColor = UIColor.blue
//} else {
  //  view.backgroundColor = UIColor.red
//}
//}


//e) How can we use different colors and images for the ‘Dark Mode’?

//we can Color Assets in the Assets.xcassets catalog. Also we can specify different colors for Light and Dark Appearance by defining two variants for each color.


//f) How can we provide different texts for different localizations of the app?

//Localizable.strings
//Example of a Localizable.strings file for English (en):
//"greeting" = "Hello";


//g) What exactly is a Build Target?
// Build Target is the type of program we are making and for wich platform is destinated to

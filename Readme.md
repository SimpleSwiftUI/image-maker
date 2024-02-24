# Image Maker

## Overview
Image Maker is a simple SwiftUI application for iOS 17 that demonstrates basic image generation in SwiftUI and saving the generated image to the Photos app. Created by Robert Brennan on 2/24/24, this project aims to showcase the integration of UIKit with SwiftUI for generating random images and handling permissions to access the photo library.

![image-maker screen capture](screen-capture/image-maker.gif)

## Features
- **Image Generation**: Generates random images with lines of random colors and widths.
- **Save to Photos**: Allows users to save generated images directly to their device's Photos app.
- **Permissions Handling**: Manages photo library access permissions seamlessly.

## Requirements
- iOS 17.0+
- Xcode 13.0+
- Swift 5

## Installation
Clone the repository or download the project to your local machine. Open the `image-maker.xcodeproj` file in Xcode. Ensure that you have the required iOS version and Xcode version to run the project.

## Usage
Upon launching the app, the user is presented with a simple interface with a "Make Image" button. Tapping this button generates a random image displayed in a modal view. The user can then choose to save the image to their Photos app or close the view to generate a new image.

### Generating an Image
The `ViewModel` class handles the image generation logic. It uses `UIGraphicsImageRenderer` to create a UIImage with random lines drawn on it. This image is then displayed on the UI through the `ImageCoverView`.

### Saving Images to Photos
To save images to the Photos app, the app checks for permissions using `PHPhotoLibrary.requestAuthorization`. If access is granted, the image is saved using `PHPhotoLibrary.shared().performChanges`. Proper error handling and feedback are provided to the user.

## Permissions
To use the Photos library, you must include the `NSPhotoLibraryUsageDescription` key in your `Info.plist` file with a message describing why the app needs access to the user's photos. See comment in ViewModel.swift for detailed instructions.


## License
The Image Maker project is released under the MIT license. 




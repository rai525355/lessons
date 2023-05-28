import 'package:flutter/material.dart';

// ********************* LESSON 3 ********************* //

class AddImages extends StatefulWidget {
  const AddImages({super.key});

  @override
  State<AddImages> createState() => _AddImagesState();
}

class _AddImagesState extends State<AddImages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Intro to Images"),
          backgroundColor: Colors.orange,
        ),
        backgroundColor: Colors.orange.shade200,
        // Rows within Column in order to further understanding of how these
        // alignment techniques work. It's a lot like 2D Arrays.
        body: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              // This aligns the children in the row to space out evenly in the row
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      // This is how you navigate to another screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const ImageNavigation("Banana")),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(150, 200),
                        // Color of the button
                        backgroundColor: Colors.yellow.shade200,
                        shape: const ContinuousRectangleBorder()),
                    // These buttons will hold images on them
                    // Make sure to properly add the images in the pubspec.yaml file
                    // Find examples for this project under section called assets:
                    child: Image.asset("assets/images/banana.png")),
                ElevatedButton(
                    onPressed: () {
                      // This is how you navigate to another screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const ImageNavigation("Flowers")),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(150, 200),
                        backgroundColor: Colors.pink.shade100,
                        shape: const ContinuousRectangleBorder()),
                    // These buttons will hold images on them
                    // Make sure to properly add the images in the pubspec.yaml file
                    // Find examples for this project under section called assets:
                    child: Image.asset("assets/images/flowers.png")),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      // This is how you navigate to another screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                // We are navigating to the same page but they
                                // have different headings in the appbar due to
                                // this parameter. See the next class for more
                                // info on how to use parameters.
                                const ImageNavigation("Rubber Duck")),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(150, 200),
                        backgroundColor: Colors.red.shade200,
                        shape: const ContinuousRectangleBorder()),
                    // These buttons will hold images on them
                    // Make sure to properly add the images in the pubspec.yaml file
                    // Find examples for this project under section called assets:
                    child: Image.asset("assets/images/rubber_duck.png")),
                ElevatedButton(
                    onPressed: () {
                      // This is how you navigate to another screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const ImageNavigation("Star")),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(150, 200),
                        backgroundColor: Colors.yellow.shade100,
                        shape: const ContinuousRectangleBorder()),
                    // These buttons will hold images on them
                    // Make sure to properly add the images in the pubspec.yaml file
                    // Find examples for this project under section called assets:
                    child: Image.asset("assets/images/star.png")),
              ],
            )
          ],
        ));
  }
}

class ImageNavigation extends StatefulWidget {
  // We add this.heading here before the {super.key}
  const ImageNavigation(this.heading, {super.key});

  // Then we have to initialize it like this.
  // Make sure to use the same name.
  final String heading;

  @override
  State<ImageNavigation> createState() => _ImageNavigationState();
}

class _ImageNavigationState extends State<ImageNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        // In order to use the heading, we have to attach widget.
        // to it like this:
        widget.heading,
        style: const TextStyle(color: Colors.red),
      )),
    );
  }
}

import 'package:flutter/material.dart';

// ********************* LESSON 1 ********************* //

// A widget is just an element of the screen. Buttons, text, etc.
/* Stateful widgets are widgets that change when the user uses them.
For example, toggle switches.
*/
// Stateless widgets don't change. For example, text or icons
class Widgets extends StatefulWidget {
  const Widgets({super.key});

  @override
  State<Widgets> createState() => _WidgetsState();
}

class _WidgetsState extends State<Widgets> {
// The build method is for the actual design of the interface. It's what you see
  @override
  Widget build(BuildContext context) {
    // Scaffold lets us implement the basic visual layout structure
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 47, 139, 219),
          title: const Text("Widgets",
              style: TextStyle(fontSize: 24, color: Colors.white)),
        ),
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        body: const Center(
          //Column is also a layout widget. It takes a list of children and
          // arranges them vertically.
          child: Column(
            children: [
              Icon(
                Icons.home,
                size: 50,
              ),
              SizedBox(height: 40),
              Text(
                "Hello",
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
        ));
  }
}

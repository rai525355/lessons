import 'package:flutter/material.dart';
import 'package:lessons/widgets1.dart';

// ********************* LESSON 2 ********************* //

class MoreWidgets extends StatefulWidget {
  const MoreWidgets({super.key});

  @override
  State<MoreWidgets> createState() => _MoreWidgetsState();
}

class _MoreWidgetsState extends State<MoreWidgets> {
  // Variables for slider and toggle switch
  double _sliderStressLevel = 3;
  bool happy = false;

// The build method is for the actual design of the interface. It's what you see
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widgets"),
        backgroundColor: Colors.green,
      ),
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          // This will create a button
          ElevatedButton(
            // onPressed controls what happens when the user presses the button
            onPressed: () {
              // This is how you navigate to another screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Widgets()),
              );
            },
            // Styling for a button
            style: ElevatedButton.styleFrom(
              fixedSize: Size(350, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              backgroundColor: Colors.green,
              foregroundColor: Colors.black,
            ),
            // What the button actually displays
            // Row arranges the list of widgets horizontally, similar to column
            child: const Row(
              children: [
                Icon(Icons.home),
                // SizedBox works the same way here, except horizontally with width
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Stateless Widgets",
                  style: TextStyle(fontSize: 24),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          // Slider for stress level
          Slider(
            // Variable that has to be double that stores the level
            value: _sliderStressLevel,
            min: 1,
            max: 5,
            divisions: 4,
            // Labels each point; has to be string; rounded to make it seem prettier
            label: _sliderStressLevel.round().toString(),
            onChanged: (double value) {
              // setState() refreshes the screen to accomodate new changes
              setState(() {
                _sliderStressLevel = value;
              });
              // store it, do something else with this data, etc.
            },
            // Styling
            activeColor: Colors.purple,
            inactiveColor: Colors.red,
            thumbColor: Colors.white,
          ),
          // Toggle Switch
          Switch(
            activeColor: Colors.blue,
            activeTrackColor: Colors.pink,
            inactiveTrackColor: Colors.green,
            inactiveThumbColor: Colors.grey,
            // Variable that has to be bool that stores the happiness
            value: happy,
            onChanged: (value) {
              setState(() {
                happy = value;
              });
            },
          )
        ],
      )),
    );
  }
}

import 'package:flutter/material.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(kToolbarHeight + 60), // Adjust the height as needed
        child: Column(
          children: [
            AppBar(
              backgroundColor:
                  Colors.purple, // Set the background color to purple
              title: Text(
                'Task Tracker',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Set the text color to white
                ),
              ),
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('Calendar Page'),
      ),
    );
  }
}

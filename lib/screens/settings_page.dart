import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class SettingsPage extends StatelessWidget {
   SettingsPage({Key? key}) : super(key: key);

ButtonStyle buttonHelp = ElevatedButton.styleFrom(
    minimumSize: Size(100, 50),
    backgroundColor: Colors.lightBlue[50],
    elevation: 0,
    
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(30))
    )
  );
  
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
      body: Column(
        children: [
          ElevatedButton(
            style: buttonHelp,
            onPressed: () {
              showDialog(
                context: context,
                builder: (context){
                  return AlertDialog(
                    title: const Text("How to use Application"),
                    content: const Text("To use the application, first go to the Manage task page. Then enter the task name in the place Enter a new task. When you are ready with the name, press + sign and your task will be added. And in the added task, if you want to edit, you can do that, you can delete the task, you can even tick mark the task after you are done with it."),
                    actions: [
                      TextButton( 
                        onPressed: () => Navigator.of(context).pop(true),
                        child: const Text('close'),
                      )
                    ],
                  );
                }
              );
              },
            child: Text('Help'),)
        ],
      ) 
       
    );
  }
}

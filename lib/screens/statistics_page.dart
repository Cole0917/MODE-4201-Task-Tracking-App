import 'package:flutter/material.dart';
import '../models/dailyTasks.dart';

class StatisticsPage extends StatefulWidget  {
  StatisticsPage({Key? key}) : super(key: key);

  @override
  _StatisticsPageState createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {

final List<DailyTasks> tasks = [
    DailyTasks(id: 'Task 1 ', taskName: "- Rise early."),
    DailyTasks(id: 'Task 2 ', taskName: "- Make your bed."),
    DailyTasks(id: 'Task 3 ', taskName: "- Recite affirmations."),
    DailyTasks(id: 'Task 4 ', taskName: "- Get some exercise."),
    DailyTasks(id: 'Task 5 ', taskName: "- Eat a nutritious breakfast."),
    DailyTasks(id: 'Task 6 ', taskName: "- Take a cold shower."),
    DailyTasks(id: 'Task 7 ', taskName: "- Prepare goals for the next day."),
    DailyTasks(id: 'Task 8 ', taskName: "- Reflect on your daily achievements."),
    DailyTasks(id: 'Task 9 ', taskName: "- Clear your head."),
    DailyTasks(id: 'Task 10 ', taskName: "- Prepare for the next morning."),
    DailyTasks(id: 'Task 11 ', taskName: "- Tidy up."),
    DailyTasks(id: 'Task 12 ', taskName: "- Practice proper sleep hygiene."),
  ];
  
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
      body:
      ListView(
          children: tasks.map((task) {
            return Card(
              child: Row(
                children: [
                  Container(child: Text(task.id + task.taskName)),
                  Checkbox(
                    value: task.isChecked,
                   onChanged: (value){
                    setState((){
                      task.isChecked = value ?? false;
                    });
                   })
                ],
                ),
            );
          }).toList(),
        )
      ); 
  }
}

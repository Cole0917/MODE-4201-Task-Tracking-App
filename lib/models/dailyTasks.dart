import 'package:flutter/material.dart';

class DailyTasks{
  final String id;
  final String taskName;
  bool isChecked;

DailyTasks({required this.id, required this.taskName, this.isChecked=false});
}


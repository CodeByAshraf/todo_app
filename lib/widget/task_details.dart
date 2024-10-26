import 'package:flutter/material.dart';
import 'package:todo_app/widget/task.appbar_details.dart';

class TaskDetails extends StatefulWidget {
  const TaskDetails({super.key});

  @override
  State<TaskDetails> createState() => _TaskDetailsState();
}

class _TaskDetailsState extends State<TaskDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TaskDetailsAppbar()
    );
  }
}
import 'package:flutter/material.dart';
import 'package:test_app/models/task_model.dart';

import '../constants/color.dart';

class DisplayTask extends StatelessWidget {
  DisplayTask({super.key, required this.tasks});

  Tasks tasks;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width,
      height: 100,
      decoration: BoxDecoration(
        color: AppColors.kTextFieldsColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(tasks.taskTitel!),
          SizedBox(height: 10),
          Text(tasks.taskDes!),
        ],
      ),
    );
  }
}

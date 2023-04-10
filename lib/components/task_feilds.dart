import 'package:flutter/material.dart';

import '../constants/color.dart';

class TaskFields extends StatelessWidget {
  TaskFields(
      {super.key, required this.hint, required this.textEditingController});

  TextEditingController textEditingController;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: AppColors.kTextFieldsColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        controller: textEditingController,
        style: TextStyle(
          fontSize: 16,
          color: AppColors.kTextColor.withOpacity(0.8),
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          border: InputBorder.none,
          hintText: hint,
          hintStyle: TextStyle(
            fontSize: 16,
            color: AppColors.kTextColor.withOpacity(0.4),
          ),
        ),
      ),
    );
  }
}

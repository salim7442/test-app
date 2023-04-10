import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../constants/color.dart';

class AddNewTask extends StatelessWidget {
  AddNewTask({super.key});

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var alertStyle = AlertStyle(
      animationType: AnimationType.fromTop,
      isCloseButton: false,
      isOverlayTapDismiss: false,
      //descTextAlign: TextAlign.start,
      animationDuration: Duration(milliseconds: 400),
      alertBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),

      //alertAlignment: Alignment.topCenter,
    );
    TextEditingController titleController = TextEditingController();
    TextEditingController desController = TextEditingController();
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    color: AppColors.kTextFieldsColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter Task Title";
                      }
                      return null;
                    },
                    controller: titleController,
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.kTextColor.withOpacity(0.8),
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: InputBorder.none,
                      hintText: "Enter Title Task",
                      hintStyle: TextStyle(
                        fontSize: 16,
                        color: AppColors.kTextColor.withOpacity(0.4),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    color: AppColors.kTextFieldsColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter Task Description";
                      }
                      return null;
                    },
                    controller: desController,
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.kTextColor.withOpacity(0.8),
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: InputBorder.none,
                      hintText: "Enter Task Descriptrion",
                      hintStyle: TextStyle(
                        fontSize: 16,
                        color: AppColors.kTextColor.withOpacity(0.4),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.kBtnColor,
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            Alert(
              context: context,
              desc: "Wad Ku Gulaysatay Inad Task Sameysato",
              type: AlertType.success,
              closeFunction: () {},
              buttons: [
                DialogButton(
                  child: Text(
                    "OK",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () => Navigator.pop(context),
                  color: Color.fromRGBO(0, 179, 134, 1.0),
                  radius: BorderRadius.circular(0.0),
                ),
              ],
              style: alertStyle,
            ).show();
          }
        },
        tooltip: 'Create Your Notes',
        child: const Icon(Icons.add),
      ),
    );
  }
}

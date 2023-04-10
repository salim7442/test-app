import 'package:flutter/material.dart';

import 'package:test_app/constants/color.dart';
import 'package:test_app/screens/task_add.dart';

import '../style/styles.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController textController = TextEditingController();
    TextEditingController noteController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notes", style: HeaderStyle),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
        ),
        child: ListView.builder(
          itemCount: 6,
          itemBuilder: (_, int index) {
            return Text("data");
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.kBtnColor,
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: () {
          var route = MaterialPageRoute(
            builder: (_) => AddNewTask(),
          );
          Navigator.push(context, route);
        },
        tooltip: 'Create Your Notes',
        child: const Icon(Icons.add),
      ),
    );
  }
}

import 'package:flutter/material.dart';

Container taskModal({ String? title,  String? description}) {
  TextEditingController titleController = TextEditingController(text: title);
  TextEditingController descriptionController =
      TextEditingController(text: description);
  final _formKey = GlobalKey<FormState>();
  return Container(
      padding: EdgeInsets.all(20),
      height: 300,
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Add a task',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            TextFormField(
              controller: titleController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter task";
                }
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Enter your task'),
            ),
            TextFormField(
              controller: descriptionController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Enter description";
                }
              },
              maxLines: 4,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Enter task description'),
            ),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(onPressed: () {}, child: Text('Submit')),
            )
          ],
        ),
      ));
}

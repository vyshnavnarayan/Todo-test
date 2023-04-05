import 'package:flutter/material.dart';
import 'package:todonew/task.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});
//  List<dynamic> task = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TODO NEW'),
      ),
      body: 
      Row(mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
          //  crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              FloatingActionButton(onPressed: () {
                showModalBottomSheet(context: context, builder: (context) => taskModal(),);
              },child: Icon(Icons.add),),
            ],
          ),
        ],
      )
    );
  }
}
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:todonew/task.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) :super(key: key);
//  List<dynamic> task = [];
  CollectionReference userRef =
      FirebaseFirestore.instance.collection('userCollection');
      final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('TODO NEW'),
        ),
        body: StreamBuilder(
            stream: userRef.where('user_id',isEqualTo: _auth.currentUser!.uid).snapshots(),
            builder: (context, snapshot) {
              if(snapshot.hasData){
                final userData = snapshot.data!.docs;
                print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
                print(snapshot.data!.docs);
                print(userData);
              
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    //  crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        child: Text(userData[1]['name'] as String),
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) => taskModal(),
                          );
                        },
                        child: Icon(Icons.add),
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ],
              );}else{ 
                return CircularProgressIndicator();
              }
            }));
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';

class PersonalInfoPage extends StatefulWidget {
  @override
  _PersonalInfoPageState createState() => _PersonalInfoPageState();
}

class _PersonalInfoPageState extends State<PersonalInfoPage> {
  String fullName = '';
  String age = '';
  String gender = '남자';
  String address = '';
  String email = '';
  String phoneNumber = '';

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: null,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.grey),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text('이름',
            style: TextStyle(fontSize: 16),
            ),
            TextFormField(
              onChanged: (value) {
                setState(() {
                  fullName = value;
                });
              },
            ),
            const SizedBox(height:16),
            const Text('나이',
            style: TextStyle(fontSize:16),
            ),
            TextFormField(
              onChanged: (value) {
                setState((){
                  age = value;
                });
              }
            ),
            const SizedBox(height:16),
            const Text('성별',
            style: TextStyle(fontSize:16),
            ),
            DropdownButton<String>(
              value: gender,
              onChanged: (value) {
                setState((){
                  gender = value!;
                });
              },
              items: <String>['남자','여자']
                .map<DropdownMenuItem<String>>((String value){
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
              }).toList(),
            ),
            const SizedBox(height:16),
            const Text('주소',
            style: TextStyle(fontSize:16),
            ),
            TextFormField(
            onChanged: (value) {
              setState(() {
                address = value;
               });
              },
            ),
          ]
        )
      )
    );
  }
}
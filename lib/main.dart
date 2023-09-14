//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:projecteveni/Signup.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null, // AppBar 제거
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image(
              image: AssetImage('assets/evenilogo.png'),
              width: 400,
              height: 400,
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'ID',
                      border: InputBorder.none, // 네모난 선 제거
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: InputBorder.none, // 네모난 선 제거
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Center(
                  child: ButtonTheme(
                    minWidth: 150, // 가로 길이 조절
                    height: 48, // 버튼의 높이 조절
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center, // 버튼들을 중앙으로 정렬
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // 로그인
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff00D2A0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0), // 버튼을 둥글게
                            ),
                          ),
                          child: const Text('로그인'),
                        ),
                        const SizedBox(width: 16),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUpPage()),
                            );
                            // 회원가입
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.grey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0), // 버튼을 둥글게
                            ),
                          ),
                          child: const Text('회원가입'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


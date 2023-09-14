import 'package:flutter/material.dart';
import 'package:projecteveni/PersonalInfoPage.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isCheckedAll = false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  void updateCheckboxex(bool value) {
    setState(() {
      isCheckedAll = value;
      isChecked1 = value;
      isChecked2 = value;
      isChecked3 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: [
              Checkbox(
                value: isCheckedAll,
                onChanged: (bool? value) {
                  updateCheckboxex(value ?? false);
                },
                activeColor: Color(0xff00D2A0),
              ),
              const Text(
                '전체동의',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          ),
          const SizedBox(height: 1),
          Row(
            children: [
              Checkbox(
                value: isChecked1,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked1 = value ?? false;
                    if(!isChecked1 || !isChecked2 || !isChecked3){
                      isCheckedAll = false;
                    } else {
                      isCheckedAll = true;
                    }
                  });
                },
                activeColor: Color(0xff00D2A0),
              ),
              const Text(
                'N/A',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const SizedBox(height: 1),
          Row(
            children: [
              Checkbox(
                value: isChecked2,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked2 = value ?? false;
                    if(!isChecked1 || !isChecked2 || !isChecked3){
                      isCheckedAll = false;
                    } else {
                      isCheckedAll = true;
                    }
                  });
                },
                activeColor: Color(0xff00D2A0),
              ),
              const Text(
                'N/A',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const SizedBox(height: 1),
          Row(
            children: [
              Checkbox(
                value: isChecked3,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked3 = value ?? false;
                    if(!isChecked1 || !isChecked2 || !isChecked3){
                      isCheckedAll = false;
                    } else {
                      isCheckedAll = true;
                    }
                  });
                },
                activeColor: Color(0xff00D2A0),
              ),
              const Text(
                'N/A',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20), //간격
          ElevatedButton(
            onPressed: (isChecked1 && isChecked2)? (){
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PersonalInfoPage())
              );
            }: null,
            style: ElevatedButton.styleFrom(
             backgroundColor: (isChecked1 && isChecked2)
                 ? const Color(0xff00D2A0)
                 : Colors.grey,
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(8.0),
          ),
          ),
            child: const Text('다음'),
          )
        ],
      ),
    );
  }
}

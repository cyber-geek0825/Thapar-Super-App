import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tsa_v0/main.dart';
import 'package:tsa_v0/signup2.dart';

class signup1 extends StatefulWidget {
  const signup1({super.key});

  @override
  State<signup1> createState() => _signup1State();
}

class _signup1State extends State<signup1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: true,
          leading: IconButton(
              //Back navigation button
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => MyApp()));
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 9,
              child: Container(
                child: Row(
                  //Logo wali row starts here
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.black,
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        color: Colors.black,
                        child: Image.asset('images/logo.jpeg'),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.black,
                      ),
                    )
                  ],
                ), //Logo wali row ends here
              ),
            ),
            Expanded(
              flex: 12,
              child: Container(
                color: Colors.black,
                child: LoginScreen(),
              ),
            ),
            // Divider(
            //   color: Colors.white,
            //   thickness: 0.1,
            // ),
            Expanded(
              flex: 2,
              child: Container(
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),

            Expanded(
              flex: 1,
              child: Container(
                color: Colors.black,
              ),
            )
          ],
        ));
    ;
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

//Here you define the layout of the form specific text fields
class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  // TextEditingController passwordController = TextEditingController();
  int buttonColor = 0xff26A9FF;
  bool inputTextNotNull = false;

  @override
  Widget build(BuildContext context) {
    double deviseWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Container(
          width: deviseWidth * 0.9,
          height: deviseWidth * 0.14,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Center(
                child: TextField(
                  onChanged: (text) {
                    setState(() {
                      if (usernameController.text.length >= 2) {
                        inputTextNotNull = true;
                      } else {
                        inputTextNotNull = false;
                      }
                    });
                  },
                  controller: usernameController,
                  style: TextStyle(fontSize: deviseWidth * 0.04),
                  decoration:
                      InputDecoration.collapsed(hintText: 'Thapar email'),
                ),
              )),
        ),
        SizedBox(
          //Helps for spacing between two widgets/containers
          height: deviseWidth * 0.05,
        ),
        inputTextNotNull
            ? GestureDetector(
                onLongPressStart: (s) {
                  setState(() {
                    buttonColor = 0xff78C9FF;
                  });
                },
                onLongPressEnd: (s) {
                  buttonColor = 0xff26A9FF;
                },
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => signup2()));
                },
                child: Container(
                  width: deviseWidth * 0.9,
                  height: deviseWidth * 0.14,
                  decoration: BoxDecoration(
                      color: Color(buttonColor),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Center(
                        child: Text(
                          'Generate OTP',
                          style: TextStyle(
                              fontSize: deviseWidth * 0.04,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                ),
              )
            : Container(
                width: deviseWidth * 0.9,
                height: deviseWidth * 0.14,
                decoration: BoxDecoration(
                    color: Color(0xff78C9FF),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Center(
                      child: Text(
                        'Generate OTP',
                        style: TextStyle(
                            fontSize: deviseWidth * 0.04,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
      ],
    );
  }
}

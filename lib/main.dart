import 'package:flutter/material.dart';
import 'package:tsa_v0/signup1.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: Column(
          //Column for the main layout
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
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        child: Text(
                          "Don't have an account?",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          signup1()));
                            },
                            child: Text(
                              'Sign up',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ))
                  ],
                ),
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
  TextEditingController passwordController = TextEditingController();
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
                      if (usernameController.text.length >= 2 &&
                          passwordController.text.length >= 2) {
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
                      if (usernameController.text.length >= 2 &&
                          passwordController.text.length >= 2) {
                        inputTextNotNull = true;
                      } else {
                        inputTextNotNull = false;
                      }
                    });
                  },
                  controller: passwordController,
                  obscureText: true,
                  style: TextStyle(fontSize: deviseWidth * 0.04),
                  decoration: InputDecoration.collapsed(hintText: 'Password'),
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
                  print('Login Detected');
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
                          'Login',
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
                        'Login',
                        style: TextStyle(
                            fontSize: deviseWidth * 0.04,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
        SizedBox(height: deviseWidth * 0.035),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Forgot Password?',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            GestureDetector(
              onTap: () {
                print('Get help');
              },
              child: Text(
                '  Get help',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

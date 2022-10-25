import 'package:flutter/material.dart';
import 'package:tsa_v0/main.dart';

class signup3 extends StatefulWidget {
  const signup3({super.key});

  @override
  State<signup3> createState() => _signup3State();
}

class _signup3State extends State<signup3> {
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
              flex: 14,
              child: Container(
                color: Colors.black,
                child: LoginScreen(),
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
  TextEditingController nameController = TextEditingController();
  TextEditingController rollController = TextEditingController();
  TextEditingController batchController = TextEditingController();
  TextEditingController hostelController = TextEditingController();
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
          height: deviseWidth * 0.11,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Center(
                child: TextField(
                  onChanged: (text) {
                    setState(() {
                      if (nameController.text.length >= 1 &&
                          passwordController.text.length >= 2 &&
                          rollController.text.length == 9 &&
                          batchController.text.length == 5 &&
                          (hostelController.text.length == 2 ||
                              hostelController.text.length == 1)) {
                        inputTextNotNull = true;
                      } else {
                        inputTextNotNull = false;
                      }
                    });
                  },
                  controller: nameController,
                  style: TextStyle(fontSize: deviseWidth * 0.04),
                  decoration: InputDecoration.collapsed(hintText: 'Full Name'),
                ),
              )),
        ),
        SizedBox(
          //Helps for spacing between two widgets/containers
          height: deviseWidth * 0.03,
        ),
        Container(
          width: deviseWidth * 0.9,
          height: deviseWidth * 0.11,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Center(
                child: TextField(
                  onChanged: (text) {
                    setState(() {
                      if (nameController.text.length >= 1 &&
                          passwordController.text.length >= 2 &&
                          rollController.text.length == 9 &&
                          batchController.text.length == 5 &&
                          (hostelController.text.length == 2 ||
                              hostelController.text.length == 1)) {
                        inputTextNotNull = true;
                      } else {
                        inputTextNotNull = false;
                      }
                    });
                  },
                  controller: rollController,
                  style: TextStyle(fontSize: deviseWidth * 0.04),
                  decoration:
                      InputDecoration.collapsed(hintText: 'Roll Number'),
                ),
              )),
        ),
        SizedBox(
          //Helps for spacing between two widgets/containers
          height: deviseWidth * 0.03,
        ),
        Container(
          width: deviseWidth * 0.9,
          height: deviseWidth * 0.11,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Center(
                child: TextField(
                  onChanged: (text) {
                    setState(() {
                      if (nameController.text.length >= 1 &&
                          passwordController.text.length >= 2 &&
                          rollController.text.length == 9 &&
                          batchController.text.length == 5 &&
                          (hostelController.text.length == 2 ||
                              hostelController.text.length == 1)) {
                        inputTextNotNull = true;
                      } else {
                        inputTextNotNull = false;
                      }
                    });
                  },
                  controller: batchController,
                  style: TextStyle(fontSize: deviseWidth * 0.04),
                  decoration:
                      InputDecoration.collapsed(hintText: 'Batch eg. 2CO20'),
                ),
              )),
        ),
        SizedBox(
          //Helps for spacing between two widgets/containers
          height: deviseWidth * 0.03,
        ),
        Container(
          width: deviseWidth * 0.9,
          height: deviseWidth * 0.11,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Center(
                child: TextField(
                  onChanged: (text) {
                    setState(() {
                      if (nameController.text.length >= 1 &&
                          passwordController.text.length >= 2 &&
                          rollController.text.length == 9 &&
                          batchController.text.length == 5 &&
                          (hostelController.text.length == 2 ||
                              hostelController.text.length == 1)) {
                        inputTextNotNull = true;
                      } else {
                        inputTextNotNull = false;
                      }
                    });
                  },
                  controller: hostelController,
                  style: TextStyle(fontSize: deviseWidth * 0.04),
                  decoration:
                      InputDecoration.collapsed(hintText: 'Hostel eg. J'),
                ),
              )),
        ),
        SizedBox(
          //Helps for spacing between two widgets/containers
          height: deviseWidth * 0.03,
        ),
        Container(
          width: deviseWidth * 0.9,
          height: deviseWidth * 0.11,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Center(
                child: TextField(
                  onChanged: (text) {
                    setState(() {
                      if (nameController.text.length >= 1 &&
                          passwordController.text.length >= 2 &&
                          rollController.text.length == 9 &&
                          batchController.text.length == 5 &&
                          (hostelController.text.length == 2 ||
                              hostelController.text.length == 1)) {
                        inputTextNotNull = true;
                      } else {
                        inputTextNotNull = false;
                      }
                    });
                  },
                  controller: passwordController,
                  obscureText: true,
                  style: TextStyle(fontSize: deviseWidth * 0.04),
                  decoration: InputDecoration.collapsed(
                      hintText: 'Enter a new Password'),
                ),
              )),
        ),
        SizedBox(
          //Helps for spacing between two widgets/containers
          height: deviseWidth * 0.03,
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
                  print('Completed Signup');
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
                          'Continue',
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
                height: deviseWidth * 0.11,
                decoration: BoxDecoration(
                    color: Color(0xff78C9FF),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Center(
                      child: Text(
                        'Continue',
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

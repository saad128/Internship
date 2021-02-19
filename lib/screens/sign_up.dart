import 'package:flutter/material.dart';
import 'package:my_project/screens/sign_in.dart';


class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool autoValidate = false;
  var _form = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sign up'),
          backgroundColor: Colors.purple,
        ),
        body: SingleChildScrollView(
          child: Form(
            key: _form,
            child: Padding(
              padding:
              const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // SizedBox(
                  //   height: 20,
                  // ),
                  // Text(
                  //   'SignUp',
                  //   style: TextStyle(fontSize: 50),
                  // ),
                  // SizedBox(
                  //   height: 50,
                  // ),
                  TextFormField(
                    controller: nameController,
                    validator: (val) {
                      return val.isEmpty ? "Please Enter Name" : null;
                    },
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: 'Name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: emailController,
                    validator: (val) {
                      return val.isEmpty ? "Please Enter Email" : null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email_rounded),
                      hintText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: passwordController,
                    validator: (val) {
                      return val.isEmpty ? "Please Enter Password" : null;
                    },
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      hintText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: phoneController,
                    validator: (val) {
                      return val.isEmpty ? "Please Enter Phone" : null;
                    },
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone),
                      hintText: 'Phone',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RaisedButton(
                    onPressed: () {
                      if (_form.currentState.validate()) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignIn()));
                      }
                    },
                    color: Colors.purple,
                    textColor: Colors.white,
                    elevation: 5,
                    shape: StadiumBorder(),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

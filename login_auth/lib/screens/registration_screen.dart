import 'package:flutter/material.dart';
import 'package:login_auth/screens/login_screem.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  //our form key
  final _formKey = GlobalKey<FormState>();
  //editing controller
  final _firstNameEditingController = new TextEditingController();
  final _secondNameEditingController = new TextEditingController();
  final _emailEditingController = new TextEditingController();
  final _passwordEditingController = new TextEditingController();
  final _confirmPasswordEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    //first name field
    final firstNameField = TextFormField(
      autofocus: false,
      controller: _firstNameEditingController,
      keyboardType: TextInputType.name,
      //validator: () {},
      onSaved: (value) {
        _firstNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.person,
          color: Colors.blueAccent,
        ),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "First Name",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    //second name field
    final secondNameField = TextFormField(
      autofocus: false,
      controller: _secondNameEditingController,
      keyboardType: TextInputType.name,
      //validator: () {},
      onSaved: (value) {
        _secondNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.person,
          color: Colors.blueAccent,
        ),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "last Name",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    //email field
    final emailField = TextFormField(
      autofocus: false,
      controller: _emailEditingController,
      keyboardType: TextInputType.emailAddress,
      //validator: () {},
      onSaved: (value) {
        _emailEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.mail,
          color: Colors.blueAccent,
        ),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "example@gmail.com",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    //password field
    final passwordField = TextFormField(
      autofocus: false,
      controller: _passwordEditingController,
      obscureText: true,
      //validator: () {},
      onSaved: (value) {
        _passwordEditingController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.vpn_key,
          color: Colors.redAccent,
        ),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    //Confirm password field
    final confirmPasswordField = TextFormField(
      autofocus: false,
      controller: _confirmPasswordEditingController,
      obscureText: true,
      //validator: () {},
      onSaved: (value) {
        _confirmPasswordEditingController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.vpn_key,
          color: Colors.redAccent,
        ),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Confirm Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    //button
    final signUpButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.redAccent,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {},
        child: Text(
          "Sign Up",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.redAccent,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 200,
                          child: Image.asset(
                            "assets/logo1.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                        //SizedBox(height: 30),
                        firstNameField,
                        SizedBox(height: 20),
                        secondNameField,
                        SizedBox(height: 20),
                        emailField,
                        SizedBox(height: 20),
                        passwordField,
                        SizedBox(height: 20),
                        confirmPasswordField,
                        SizedBox(height: 20),
                        signUpButton,
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Have an Account"),
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "SignIn",
                                style: TextStyle(
                                    color: Colors.redAccent,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        )
                      ],
                    )),
              ),
            ),
          ),
        ));
  }
}

import 'package:booble/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'text_field.dart';
import 'button.dart';

class Signup extends StatefulWidget {
  const Signup();

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController name = TextEditingController();
  final TextEditingController prenom = TextEditingController();
  final TextEditingController mainController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    name.dispose();
    prenom.dispose();
    mainController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(top: 50),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.blue),
          ),
          child: ConstrainedBox(
            constraints: BoxConstraints(
                maxWidth: 500
            ),
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Boogle",
                    style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),

                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Inscription",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          CustomTextField(
                            controller: name,
                            hintText: "Nom",
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          CustomTextField(
                            controller: prenom,
                            hintText: "Prenom",
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          CustomTextField(
                            controller: mainController,
                            hintText: "email",
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "invalid_email";
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          CustomTextField(
                            controller: passwordController,
                            hintText: "password",
                            obscureText: true,
                            validator: (value) {
                              if (value!.length < 8) {
                                return "password_alerte";
                              } else {
                                return null;
                              }
                            },
                          ),
                        ],
                      )),

                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return MyHomePage();
                        }));
                      },
                      child: Text(
                        "S'inscrire",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                      )),
                  const SizedBox(
                    height: 30,
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

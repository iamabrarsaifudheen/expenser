import 'package:expenser/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:expenser/widgets/text_box.dart';

class EmailSignIn extends StatefulWidget {
  const EmailSignIn({Key? key}) : super(key: key);

  @override
  _EmailSignInState createState() => _EmailSignInState();
}

class _EmailSignInState extends State<EmailSignIn> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Text("SIGN IN"),
        ),
        body: SafeArea(
            child: Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 36, vertical: 50),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TextBox(
                          
                          hintText: "Enter your Email",
                          type:'email',
                          controller: _emailController,
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: height / 40),
                        TextBox(
                          type:'password',
                          hintText: "Enter your Password",
                          controller: _passwordController,
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: height / 20),
                        Button(
                          text: "LET ME IN",
                          onPressed: () {
                              if (_formKey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Processing Data')),
                              );
                            }

                          },
                        )
                      ],
                    ),
                  ),
                ))));
  }
}

import 'package:aws_load/Authentication/ForgotPage.dart';
import 'package:aws_load/Authentication/registerPage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
          elevation: 0, centerTitle: true, backgroundColor: Colors.transparent),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //Text
                      const Text(
                        'Hi, login to AWS ',
                        style: TextStyle(
                          letterSpacing: 1,
                          fontWeight: FontWeight.w800,
                          fontSize: 50,),
                      ),
                      SizedBox(height: 30,),
                      //Email Textbox
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          label: Text('Email'),
                          prefixIcon: Icon(Icons.mail)
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      //Password Textbox
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          label: Text('Password'),
                          prefixIcon: Icon(Icons.lock)
                        ),
                        obscureText: true,
                        ),
                      SizedBox(height: 15,),
                      //Text Forgot password
                      Center(
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const ForgotPage()),
                            );
                          },
                          child: const Text('Forgot Password??',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w600,
                            fontSize: 16
                          ),),
                        ),
                      ),
                      //Login button
                      SizedBox(height: 15,),
                      ElevatedButton(onPressed: () {}, child: Text('Login')),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          const Text('Not a member? ',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18
                            ),),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const RegisterPage()),
                              );
                            },
                            child: const Text(
                              'Register',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

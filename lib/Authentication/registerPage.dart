import 'package:aws_load/Authentication/loginPage.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(28.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'New Users Register here',
                        style: TextStyle(
                          letterSpacing: 1,
                          fontWeight: FontWeight.w800,
                          fontSize: 50,),
                      ),
                      SizedBox(height: 30,),
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
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          label: Text('Password'),
                            prefixIcon: Icon(Icons.lock)
                        ),
                      ),
                      SizedBox(height: 20,),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          label: Text('Confirm Password'),
                          prefixIcon: Icon(Icons.lock)
                        ),
                      ),
                      SizedBox(height: 30,),
                      ElevatedButton(onPressed: () {}, child: Text('Verify Email')),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Text("I'm a member ",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18
                          ),),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const LoginPage()),
                            );
                          },
                          child:
                          Text('Login',
                          style: TextStyle(
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.w800,
                            fontSize: 18,
                          ),),
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

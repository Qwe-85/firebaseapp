import 'package:firebaseapp/UI/round_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Login Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Form(
            key: _formkey,
            child: Column(
              children: [
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                      hintText: 'Email',
                      helperText: 'enter email e.g:john@gmail.com',
                      prefix: Icon(Icons.email_rounded)),
                      validator: ((value) {
                        if(value!.isEmpty){
                          return 'Enter Email';
                        }
                        return null;
                      },
                ),
                
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      prefix: Icon(Icons.password_outlined),
                      suffix: Icon(Icons.remove_red_eye_outlined)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Roundbutton(title: 'Login', onTap: () {
            if(_formkey.currentState!.validate()){

            }
          })
        ],
      ),
    );
  }
}

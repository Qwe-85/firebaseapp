import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebaseapp/UI/auth/login_screen.dart';
import 'package:firebaseapp/UI/round_button.dart';
import 'package:firebaseapp/Utils/utils.dart';
import 'package:flutter/material.dart';

class SignUP extends StatefulWidget {
  const SignUP({super.key});

  @override
  State<SignUP> createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  bool loading = false;
  final _formkey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordCntroller = TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Sign UP'),
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
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  decoration: const InputDecoration(
                    hintText: 'Email',
                    helperText: 'enter email e.g: john@gmail.com',
                    prefix: Icon(Icons.email_rounded),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter Email';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  controller: passwordCntroller,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Password',
                    prefix: Icon(Icons.password_outlined),
                    suffix: Icon(Icons.remove_red_eye_outlined),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter password';
                    }
                    return null;
                  },
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Roundbutton(
              title: 'Sign Up',
              loading: loading,
              onTap: () {
                if (_formkey.currentState!.validate()) {
                  setState(() {
                    loading = true;
                  });
                  _auth
                      .createUserWithEmailAndPassword(
                          email: emailController.text.toString(),
                          password: passwordCntroller.text.toString())
                      .then((value) {
                    setState(() {
                      loading = false;
                    });
                  }).onError((error, stackTrace) {
                    utils().ToastMessage(error.toString());
                    setState(() {
                      loading = true;
                    });
                  });
                }
              }),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Text("Already have account? "),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: const Text('Sign In'))
            ],
          )
        ],
      ),
    );
  }
}

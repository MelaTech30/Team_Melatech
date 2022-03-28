import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Homepage.dart';

class Newlogin extends StatefulWidget {
  const Newlogin({Key? key}) : super(key: key);

  @override
  State<Newlogin> createState() => _NewloginState();
}

class _NewloginState extends State<Newlogin> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String _email, _password;

  checkAuthentification() async {
    _auth.authStateChanges().listen((user) {
      if (user != null) {
        print(user);

        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return HomePage();
        }));
      }
    });
  }

  @override
  void initState() {
    super.initState();
    this.checkAuthentification();
  }

  login() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      try {
        await _auth.signInWithEmailAndPassword(
            email: _email, password: _password);
      } catch (e) {
        showError(e.toString());
        print(e);
      }
    }
  }

  showError(String errormessage) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('ERROR'),
            content: Text(errormessage),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        SizedBox(
          height: 300,
        ),
        Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter your email',
                    icon: Icon(Icons.email),
                  ),
                  onSaved: (input) => _email = input!,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    icon: Icon(Icons.lock),
                  ),
                  obscureText: true,
                  onSaved: (input) => _password = input!,
                ),
                TextButton(onPressed: login, child: const Text('Login')),
              ],
            ))
      ],
    ));
  }
}

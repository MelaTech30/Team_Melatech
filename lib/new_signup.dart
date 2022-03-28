import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Homepage.dart';

class NewSignUp extends StatefulWidget {
  const NewSignUp({Key? key}) : super(key: key);

  @override
  State<NewSignUp> createState() => _NewSignUpState();
}

class _NewSignUpState extends State<NewSignUp> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String _email, _password, _name;

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

  signUp() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      try {
        UserCredential user = await _auth.createUserWithEmailAndPassword(
            email: _email, password: _password);
        if (user != null) {
          // UserUpdateInfo updateuser = UserUpdateInfo();
          // updateuser.displayName = _name;
          //  user.updateProfile(updateuser);
          await _auth.currentUser!.updateProfile(displayName: _name);
          // await Navigator.pushReplacementNamed(context,"/") ;

        }
      } catch (e) {
        //showError(e.message);
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
                TextButton(onPressed: signUp, child: const Text('Sign Up')),
              ],
            ))
      ],
    ));
  }
}

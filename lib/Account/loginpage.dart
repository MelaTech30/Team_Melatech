import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:melatech/homepage.dart';
import 'package:melatech/Account/reset.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.green,
        ),
        child: ListView(
          children: [
            const SizedBox(
              height: 35,
            ),
            const Center(
              child: Text(
                'Login',
                style: TextStyle(fontSize: 35, color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 55,
            ),
            Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            icon: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.email, color: Colors.green),
                            ),
                            hintText: 'Email',
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none)),
                        onSaved: (input) => _email = input!,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextFormField(obscureText: true,
                        decoration: const InputDecoration(
                            icon: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.lock,
                                color: Colors.green,
                              ),
                            ),
                            hintText: 'Password',
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none)),
                        onSaved: (input) => _password = input!,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ResetPage()));
                          },
                          child: const Text(
                            'Forgot password?',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, right: 50),
                      child: TextButton(
                          onPressed: login,
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            foregroundColor: MaterialStateProperty.all(
                                const Color(0xFF4e055a)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                          ),
                          child: const Text('Sign in')),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:melatech/Account/loginpage.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String _email, _password, _name;

  checkAuthentification() async {
    _auth.authStateChanges().listen((user) {
      if (user != null) {
        print(user);

        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return LoginPage();
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
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.green,
        ),
        child: ListView(
          children: [
            const SizedBox(
              height: 25,
            ),
            const Center(
                child: Text(
              'Create Account',
              style: TextStyle(color: Colors.white, fontSize: 30),
            )),
            const SizedBox(
              height: 40,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            icon: Padding(
                              padding: EdgeInsets.all(8.0),
                              child:
                                  Icon(Icons.person, color: Color(0xFF4e055a)),
                            ),
                            hintText: 'Name',
                            hintStyle: TextStyle(color: Colors.green),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none)),
                        onSaved: (input) => _name = input!,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            icon: Padding(
                              padding: EdgeInsets.all(8.0),
                              child:
                                  Icon(Icons.email, color: Color(0xFF4e055a)),
                            ),
                            hintText: 'Email',
                            hintStyle: TextStyle(color: Colors.green),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none)),
                        onSaved: (input) => _email = input!,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            icon: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.lock, color: Color(0xFF4e055a)),
                            ),
                            hintText: 'Password',
                            hintStyle: TextStyle(color: Colors.green),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none)),
                        onSaved: (input) => _password = input!,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 70, right: 70),
                    child: TextButton(
                        onPressed: signUp,
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          foregroundColor: MaterialStateProperty.all(
                              const Color(0xFF4e055a)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                        ),
                        child: const Text('Create')),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

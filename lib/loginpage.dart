import 'package:flutter/material.dart';
import 'package:melatech/homepage.dart';
import 'package:melatech/reset.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
           color: Colors.lightGreen,
        ),
        child: ListView(
          children: [
            const SizedBox(
              height: 15,
            ),
            const Center(
              child: Text(
                'Login',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 75,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                    icon: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.email),
                    ),
                    label: Text('Email',
                        style: TextStyle(color: Color(0xFF4e055a))),
                    border: OutlineInputBorder(borderSide: BorderSide.none)),
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
              child: TextFormField(
                decoration: const InputDecoration(
                    icon: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.lock),
                    ),
                    label: Text('Password',
                        style: TextStyle(color: Color(0xFF4e055a))),
                    border: OutlineInputBorder(borderSide: BorderSide.none)),
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
                  child: const Text('Forgot password?')),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 60, right: 60),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    foregroundColor:
                        MaterialStateProperty.all(const Color(0xFF4e055a)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                  ),
                  child: const Text('Sign in')),
            )
          ],
        ),
      ),
    );
  }
}

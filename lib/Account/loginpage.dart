import 'package:flutter/material.dart';
import 'package:melatech/homepage.dart';
import 'package:melatech/Account/reset.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
                      child: Icon(
                        Icons.lock,
                        color: Colors.green,
                      ),
                    ),
                    hintText: 'Password',
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
                  child: const Text(
                    'Forgot password?',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
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

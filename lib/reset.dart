import 'package:flutter/material.dart';
import 'package:melatech/loginpage.dart';

class ResetPage extends StatelessWidget {
  const ResetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF4e055a), Color(0xFF4ccce8)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView(
          children: [
            const SizedBox(
              height: 15,
            ),
            const Center(
                child: Text(
              'Reset Password',
              style: TextStyle(color: Colors.white, fontSize: 30),
            )),
            const SizedBox(
              height: 70,
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
                      child: Icon(Icons.email, color: Color(0xFF4e055a)),
                    ),
                    label: Text('Email',
                        style: TextStyle(color: Color(0xFF4e055a))),
                    border: OutlineInputBorder(borderSide: BorderSide.none)),
              ),
            ),
            const SizedBox(
              height: 10,
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
                      child: Icon(Icons.lock, color: Color(0xFF4e055a)),
                    ),
                    label: Text('New Password',
                        style: TextStyle(color: Color(0xFF4e055a))),
                    border: OutlineInputBorder(borderSide: BorderSide.none)),
              ),
            ),
            const SizedBox(
              height: 10,
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
                      child: Icon(Icons.lock, color: Color(0xFF4e055a)),
                    ),
                    label: Text('Confirm Password',
                        style: TextStyle(color: Color(0xFF4e055a))),
                    border: OutlineInputBorder(borderSide: BorderSide.none)),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 70, right: 70),
              child: TextButton(
                  onPressed: () {
                    Navigator.pop(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()));
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
                  child: const Text('Confirm')),
            )
          ],
        ),
      ),
    );
  }
}

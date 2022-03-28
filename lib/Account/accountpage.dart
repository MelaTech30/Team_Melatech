import 'package:flutter/material.dart';
import 'package:melatech/Account/loginpage.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

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
                        child: Icon(Icons.person, color: Color(0xFF4e055a)),
                      ),
                      hintText: 'Name',
                      // style: TextStyle(color: Color(0xFF4e055a)),
                      border: OutlineInputBorder(borderSide: BorderSide.none)),
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Padding(
            //   padding: const EdgeInsets.only(left: 20, right: 20),
            //   child: Container(
            //     decoration: BoxDecoration(
            //       color: Colors.white,
            //       borderRadius: BorderRadius.circular(20),
            //     ),
            //     child: TextFormField(
            //       decoration: const InputDecoration(
            //           icon: Padding(
            //             padding: EdgeInsets.all(8.0),
            //             child: Icon(Icons.person, color: Color(0xFF4e055a)),
            //           ),
            //           hintText:
            //             'Middlename',
            //             // style: TextStyle(color: Color(0xFF4e055a)),

            //           border: OutlineInputBorder(borderSide: BorderSide.none)),
            //     ),
            //   ),
            // ),
            // const SizedBox(height: 10),
            // Padding(
            //   padding: const EdgeInsets.only(left: 20, right: 20),
            //   child: Container(
            //     decoration: BoxDecoration(
            //       color: Colors.white,
            //       borderRadius: BorderRadius.circular(20),
            //     ),
            //     child: TextFormField(
            //       decoration: const InputDecoration(
            //           icon: Padding(
            //             padding: EdgeInsets.all(8.0),
            //             child: Icon(Icons.person, color: Color(0xFF4e055a)),
            //           ),
            //           hintText:
            //             'Surname',
            //             // style: TextStyle(color: Color(0xFF4e055a)),

            //           border: OutlineInputBorder(borderSide: BorderSide.none)),
            //     ),
            //   ),
            // ),
            // const SizedBox(height: 10),
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
                        child: Icon(Icons.lock, color: Color(0xFF4e055a)),
                      ),
                      hintText: 'Password',
                      // style: TextStyle(color: Color(0xFF4e055a))
                      border: OutlineInputBorder(borderSide: BorderSide.none)),
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
                        child: Icon(Icons.lock, color: Color(0xFF4e055a)),
                      ),
                      hintText: 'Confirm Password',
                      // style: TextStyle(color: Color(0xFF4e055a))
                      border: OutlineInputBorder(borderSide: BorderSide.none)),
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
                        child: Icon(Icons.email, color: Color(0xFF4e055a)),
                      ),
                      hintText: 'Email',
                      // style: TextStyle(color: Color(0xFF4e055a))
                      border: OutlineInputBorder(borderSide: BorderSide.none)),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 70, right: 70),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
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
                  child: const Text('Create')),
            )
          ],
        ),
      ),
    );
  }
}

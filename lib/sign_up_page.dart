import 'package:test_auth/login_page.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        return FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'SignUp',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                SizedBox(
                        height: 30,
                      ),
                 Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              label: Text(
                                'Enter your username',
                                style: TextStyle(color: Colors.white),
                              ),
                              border: OutlineInputBorder()),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              label: Text(
                                'Enter your email',
                                style: TextStyle(color: Colors.white),
                              ),
                              border: OutlineInputBorder()),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: TextFormField(
                          obscureText: _isObscure,

                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: (){
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              },
                              icon: Icon(
                                _isObscure ? 
                              Icons.visibility_off : Icons.visibility)),
                              label: Text(
                                'Enter your password',
                                style: TextStyle(color: Colors.white),
                              ),
                              border: OutlineInputBorder()),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              label: Text(
                                'Enter your phone number',
                                style: TextStyle(color: Colors.white),
                              ),
                              border: OutlineInputBorder()),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 50,
                        width: 300,
                        child: TextButton(
                            style:
                                TextButton.styleFrom(backgroundColor: Colors.blue),
                            onPressed: () {},
                            child: Text(
                              'Submit',
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            )),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account",
                            style: TextStyle(color: Colors.white),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginPage(),
                                    ));
                              },
                              child: Text(
                                'Login',
                                style: TextStyle(color: Colors.blue),
                              ))
                        ],
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

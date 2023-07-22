import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySignIn extends StatefulWidget {
  const MySignIn({Key? key}) : super(key: key);

  @override
  State<MySignIn> createState() => _MySignInState();
}

class _MySignInState extends State<MySignIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/screen2.png'), fit: BoxFit.cover)),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
                margin: const EdgeInsets.only(left:25,top:55),
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: const Color(0xFFD6F2F1),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'login');
                        },
                        icon: const Icon(Icons.arrow_back, color: Colors.black,),
                      ),
                    ),
                    const SizedBox(width: 8,),
                    const Text('Sign in',style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),)
                  ],
                )
            ),
            SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.only(left:25,right:25),
                alignment: Alignment.center,
                padding: const EdgeInsets.only(top:280),
                child: Column(
                  children: [

                    SizedBox(
                      height: 55,
                      width: double.infinity,
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: const Color(0xFFEDF7F7),
                          filled: true,
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: Color(0xFFEDF7F7)),),
                          labelText: 'Enter your Email',
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    SizedBox(
                      height: 55,
                      width: double.infinity,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: const Color(0xFFEDF7F7),
                          filled: true,
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
                          labelText: 'Password',
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.square_outlined, color: Colors.black ,
                                ),
                                SizedBox(width: 8,),
                                Text('Remember Me', style: TextStyle(color: Colors.black, fontSize: 15),),
                              ],
                            ),
                            Text('Forgot Password?',style: TextStyle(color: Colors.red, fontSize: 15,),)
                          ],
                        )
                    ),
                    const SizedBox(height: 20,),

                    SizedBox(
                      height: 55,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('Sign In', style: TextStyle(fontSize: 15),),
                        style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF4DAE60),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      margin: const EdgeInsets.only(right:25,left:25,bottom: 120),
                      alignment: Alignment.bottomCenter,
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                            children: <TextSpan>[
                              TextSpan(text: 'Don\'t have an account? ',style: TextStyle(color: Colors.black,fontSize: 15, fontWeight: FontWeight.bold)),
                              TextSpan(text: 'Sign Up', style: TextStyle(color: Color(0xFF4DAE60),fontSize: 15, fontWeight: FontWeight.bold)),
                            ]
                        ),
                      ),
                    ),
                    const SizedBox(height: 35,),
                    Container(
                      alignment: Alignment.bottomCenter ,
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                            children: <TextSpan>[
                              TextSpan(text: 'By clicking "Sign In" above, you agree to 7krave\'s ',style: TextStyle(color: Colors.black,fontSize: 13)),
                              TextSpan(text: 'Terms & Conditions ', style: TextStyle(color: Colors.orangeAccent,fontSize: 13)),
                              TextSpan(text: 'and ',style: TextStyle(color: Colors.black,fontSize: 13)),
                              TextSpan(text: 'Privacy Policy', style: TextStyle(color: Colors.orangeAccent,fontSize: 13)),
                              TextSpan(text: '.',style: TextStyle(color: Colors.black,fontSize: 13)),
                            ]
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

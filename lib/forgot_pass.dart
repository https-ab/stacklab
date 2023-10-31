import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/fw.png'), fit: BoxFit.cover
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(top: 130, left: 35),
              child: Text(
                'Forgot\nPassword',
                style: TextStyle(color: Colors.white, fontSize: 33),
              ),
            ),

            Container(
              padding: EdgeInsets.only(top: 350, left: 40),
              child: Text(
                'Enter Your Email to get Reset Password Link !',
                style: TextStyle(color: Colors.black87, fontSize: 15, fontWeight: FontWeight.w800),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.5,
                  left: 35,
                  right: 35
                ),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Your Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Reset Link',
                          style: TextStyle(
                            color: Color(0xff4c5055b),
                            fontSize: 27,
                            fontWeight: FontWeight
                              .w700
                          ),
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xff4c505b),
                          child: IconButton(
                            color: Colors.white,
                            onPressed: () {
                              Navigator.pushNamed(context, 'link_send');
                            },
                            icon: Icon(Icons.arrow_forward),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


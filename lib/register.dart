import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({super.key});

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            //Image
            Container(
              margin: EdgeInsets.only(top: 53,left: 25,),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.lightGreen.shade200,
                    child: IconButton(
                      onPressed: (){
                      },
                      icon: Icon(Icons.arrow_back),
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10,),
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 180,
              height: 180,
              margin: EdgeInsets.only(left: 120,top: 150),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/nature_unsplash.jpg'),
                    fit: BoxFit.fill,
                  )
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: 400,right: 25,left: 25,),
                child: Column(
                  children:<Widget> [
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Enter your email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 550,left: 15),
              child: Row(
                children: <Widget>[
                  IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.check_box_outline_blank),
                  ),
                  Text(
                    'Remember Me',
                    style: (TextStyle(
                      fontSize: 17,
                      color: Colors.black87,
                    )),
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 73,),
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 380),
              child: ElevatedButton.icon(
                onPressed: (){},
                icon: Icon(Icons.login),
                label: Text("Sign In",style: TextStyle(fontSize: 16,),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[500],
                  minimumSize: const Size(360, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 105,top: 680,),
              child: Row(
                children: <Widget>[
                  Text("Don't have an account?",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),

                  Text.rich(TextSpan(
                    style: TextStyle(color: Colors.green),
                    children: [
                      TextSpan(text: "Sign Up",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                    ],
                  )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 35,top: 830,),
              child: Row(
                children: <Widget>[
                  Text('By clicking Sign In above, you agree to ',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600),
                  ),
                  Text.rich(TextSpan(
                    style: TextStyle(color: Colors.yellow.shade800),
                    children: [
                      TextSpan(text: "Terms & Conditions",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600)),
                    ],
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

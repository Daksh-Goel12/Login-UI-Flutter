import 'package:flutter/material.dart';

class Mylogin extends StatefulWidget {
  const Mylogin({super.key});

  @override
  State<Mylogin> createState() => _MyloginState();
}

class _MyloginState extends State<Mylogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(left:110,top: 150,),
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/img2-unsplash.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            //Adding Skip Button
            Container(
              margin: EdgeInsets.only(top: 20, left: 330,),
              padding: EdgeInsets.only(top: 40,bottom: 40),
              child: ElevatedButton(
                onPressed: (){},
                child: Text('Skip', style: TextStyle(fontSize: 15.0,color: Colors.black),),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: Colors.yellow[100],
                ),
              ),
            ),

            //Adding Sign in buttons
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 450),
              child: Column(
                children:<Widget> [
                  ElevatedButton.icon(
                    onPressed: (){
                      Navigator.pushNamed(context, 'register');
                    },
                    icon: Icon(Icons.email),
                    label: Text('Continue with Email', style: TextStyle(fontSize: 20.0),),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Colors.green,
                      minimumSize: const Size(380, 60),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton.icon(
                    onPressed: (){
                      Navigator.pushNamed(context, 'register');
                    },
                    icon: Icon(Icons.apple),
                    label: Text('Continue with Apple',style: TextStyle(fontSize: 20.0),),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Colors.black,
                      minimumSize: const Size(380, 60),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton.icon(
                    onPressed: (){
                      Navigator.pushNamed(context, 'register');
                    },
                    icon: Icon(Icons.g_mobiledata_outlined),
                    label: Text('Continue with Google', style:TextStyle(fontSize: 20.0),),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Colors.lightBlue,
                      minimumSize: const Size(380, 60),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton.icon(
                    onPressed: (){
                      Navigator.pushNamed(context, 'register');
                    },
                    icon: Icon(Icons.facebook),
                    label: Text('Continue with Facebook', style:TextStyle(fontSize: 20.0),),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Colors.blueAccent,
                      minimumSize: const Size(380, 60),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 105,),
                    child: Row(
                      children:<Widget> [
                        Text( "Dont have an account?",
                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        Text.rich(
                            TextSpan(
                                style: TextStyle(color: Colors.green),
                                children: [
                                  TextSpan(text: "Sign up", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                                ]
                            )
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 35,top: 840,),
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
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Sign Up",style: TextStyle(
              color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold
          ),),
          Text("Please sign up to enter our app",
            style: TextStyle(color: Colors.grey,fontSize: 12),),
          SizedBox(height: 20,),
          Text("Enter via social network",
            style: TextStyle(color: Colors.grey,fontSize: 12),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlue[400],
                      shape: RoundedRectangleBorder(),
                      fixedSize: Size(150,50)
                  ),
                  onPressed: (){},
                  child:Image.asset("assets/images/twi.png",
                    width: 50,
                    height: 50,
                  ) ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[800],
                      shape: RoundedRectangleBorder(),
                      fixedSize: Size(150,50)
                  ),
                  onPressed: (){},
                  child:Image.asset("assets/images/facebook.png",
                    width: 30,
                    height: 30,
                  ) )
            ],
          ),
          Text("Or sign up with email",
            style: TextStyle(color: Colors.grey,fontSize: 12),),
          Container(
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.all(8),
            height: 50,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border:Border.all(color: Colors.grey),
            ),
            child: Text("Email",style: TextStyle(color: Colors.grey,fontSize: 16,
                fontWeight: FontWeight.bold),),
          ),
          Container(
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.all(8),
            height: 50,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border:Border.all(color: Colors.grey),
            ),
            child: Text("Password",style: TextStyle(color: Colors.grey,fontSize: 16,
                fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Row(
              children: [
                IntrinsicHeight(
                  child: IntrinsicWidth(
                    child: Stack(
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.blueAccent),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional.center,
                          child: Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue[800],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Text("I agree with the privacy policy",
                  style: TextStyle(color: Colors.grey,fontSize: 12),),
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue[400],
                shape: RoundedRectangleBorder(),
                fixedSize: Size(300,50)
            ),
            onPressed: (){},
            child: Text("Sign Up",style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold
            ),),

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have an account?",
                style: TextStyle(color: Colors.grey,fontSize: 12),),
              TextButton(onPressed: (){},
                  child: Text("Login",style: TextStyle(
                      color: Colors.blueAccent
                  ),))
            ],
          ),

        ],
      ),
    );
  }
}

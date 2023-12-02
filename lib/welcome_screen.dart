import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Welcome",style: TextStyle(
              color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold
          ),),
          Text("Please login or sign up to continue using our app",
            style: TextStyle(color: Colors.grey,fontSize: 12),),
          Image.asset("assets/images/welcome.png",
            width: 360,
            height: 180,
            fit: BoxFit.fill,),
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
          Text("Or login with email",
            style: TextStyle(color: Colors.grey,fontSize: 12),),
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
              Text("Don't have an account?",
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

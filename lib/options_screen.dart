import 'package:flutter/material.dart';

class OptionsScreen extends StatelessWidget {
  const OptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(Icons.arrow_back_rounded,size: 25,color: Colors.white,),
        actions: [
          Icon(Icons.light_mode_outlined,size: 25,color: Colors.white,),
          SizedBox(width: 12,),
        ],
      ),
      body: Container(
        color: Colors.black,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IntrinsicHeight(
              child: IntrinsicWidth(
                child: Stack(

                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("assets/images/manImage.jpg"),
                    ),
                    Align(
                      alignment: AlignmentDirectional.bottomEnd,
                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.yellow,
                        child: Icon(Icons.edit_rounded,size: 10,),
                      ),
                    ),
                  ],
                ),

              ),
            ),
            Text("Nicolas Adams",style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),),
            Text("nicolasadam@gmail.com",style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),),
            SizedBox(height: 12,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                  fixedSize: Size(225, 45),
                ),
                onPressed: (){},
                child: Text("Upgrade to PRO",style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),)),
            SizedBox(height: 15,),

            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(25),
              ),
              child: ListTile(
                leading: Icon(Icons.privacy_tip_outlined,color: Colors.white,size: 20,),
                title: Text("Privacy",style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),),
                trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 20,),


              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(25),
              ),
              child: ListTile(
                leading: Icon(Icons.update_outlined,color: Colors.white,size: 20,),
                title: Text("Purchase History",style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),),
                trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 20,),


              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(25),
              ),
              child: ListTile(
                leading: Icon(Icons.help_outline_outlined,color: Colors.white,size: 20,),
                title: Text("Help & Support",style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),),
                trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 20,),


              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(25),
              ),
              child: ListTile(
                leading: Icon(Icons.settings,color: Colors.white,size: 20,),
                title: Text("Settings",style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),),
                trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 20,),


              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(25),
              ),
              child: ListTile(
                leading: Icon(Icons.person_add_alt_outlined,color: Colors.white,size: 20,),
                title: Text("Invite a friend",style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),),
                trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 20,),


              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(25),
              ),
              child: ListTile(
                leading: Icon(Icons.logout_rounded,color: Colors.white,size: 20,),
                title: Text("Logout",style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),),
                trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 20,),


              ),
            ),


          ],
        ),
      ),
    );
  }
}

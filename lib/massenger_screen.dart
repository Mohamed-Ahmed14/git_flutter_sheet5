import 'package:flutter/material.dart';

class MassengerScreen extends StatelessWidget {
  const MassengerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,

        leading: Padding(
          padding: const EdgeInsets.all(8),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/kevin.jpg"),
          ),
        ),

        centerTitle: false,
        title: Text("Chats",
          style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),

        actions: [
          CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey,
              child: Icon(Icons.camera_alt_rounded,color: Colors.white,size: 20,)),
          SizedBox(width: 10,),
          CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey,
              child: Icon(Icons.edit_rounded,color: Colors.white,size: 20,))
        ],

      ),
      body: Container(
        color: Colors.black,
        width: 1000,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(12),
                margin: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(30),
                ),
                child:Row(
                  children: [
                    Icon(Icons.search_outlined,color: Colors.white,size: 18,),
                    SizedBox(width: 10,),
                    Text("Search",style: TextStyle(color: Colors.white,fontSize: 16),)
                  ],
                ),
              ),
              SizedBox(height: 10,),
          
              SizedBox(
                height: 100,
                width:1000,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 135,
                        width: 60,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IntrinsicHeight(
                              child: Stack(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage("assets/images/kevin.jpg"),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional.bottomEnd,
                                    child: CircleAvatar(
                                      radius: 7,
                                      backgroundColor: Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text(" Kevin",style: TextStyle(color: Colors.white,fontSize: 12),)
                          ],
                        ),
                      );
                    }, separatorBuilder: (context, index) {
                  return SizedBox(width: 5,);
                }, itemCount: 10),
              ),
              SizedBox(height: 9,),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
              
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: IntrinsicHeight(
                        child: Stack(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage("assets/images/kevin.jpg"),
                            ),
                            Align(
                              alignment: AlignmentDirectional.bottomEnd,
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 12,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Kevin De Bruyne",style: TextStyle(
                              color: Colors.white,fontWeight: FontWeight.bold,fontSize: 12
                          ),),
                          SizedBox(height: 5,),
                          Text("Manchaster City",style: TextStyle(
                              color: Colors.white,fontWeight: FontWeight.bold,fontSize: 12
                          ),),
                        ],
                      ),
                    ),
                    Text("11:37 PM",style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12
                    ),),
                    SizedBox(width: 5,),
                  ],
                );
              }, separatorBuilder: (context, index) {
                return SizedBox(height: 5,);
              }, itemCount: 10),
          
          
          
          
            ],
          ),
        ),
      ),
    );
  }
}

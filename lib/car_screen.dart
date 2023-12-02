import 'package:flutter/material.dart';

class CarScreen extends StatelessWidget {
  const CarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 45,
        leading: Icon(Icons.arrow_back_ios_outlined,size: 20,color: Colors.black,),
        centerTitle: false,
        title: Text("Back",style: TextStyle(
          color: Colors.black,
          fontSize: 14,
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),

        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Available cars for ride",style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 10,),
              Text("18 cars found",style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),),
              SizedBox(height: 20,),
              ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,

                  itemBuilder: (context, index) {
                    return Container(
                      height: 180,
                      width: double.infinity,
                      padding: EdgeInsets.all(12),

                      decoration: BoxDecoration(
                        color: Colors.greenAccent[100],
                        border: Border.all(color: Colors.green),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("TOYOTA Corolla",style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Automatic | 4 seats | Octone",style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),),
                              SizedBox(width: 5,),
                              Expanded(child: Image.asset("assets/images/carToyota.png",
                                width: 100,
                                height: 45,)),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.location_on,color: Colors.black,size: 20,),
                              Text("800m (5mins away)",style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,

                              ),)
                            ],
                          ),
                          SizedBox(height: 15,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.lightGreenAccent[900],
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                    side: BorderSide(color: Colors.green),
                                    fixedSize: Size(135,50)
                                ),
                                onPressed: (){},
                                child:Text("Book later",style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                )
                                ),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.green,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                    side: BorderSide(color: Colors.green),
                                    fixedSize: Size(135,50)
                                ),
                                onPressed: (){},
                                child:Text("Ride now",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                )
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }, separatorBuilder: (context, index) {
                return SizedBox(height: 10,);
              }, itemCount: 10),
            ],
          ),
        ),
      ),
    );
  }
}

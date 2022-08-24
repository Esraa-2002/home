import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
 





  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar:AppBar(backgroundColor: Colors.white,

      leading: Text('esraa_talaa',style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal,color: Colors.black87)),
      leadingWidth: 300,
      actions: [
        Icon( Icons.add_box_outlined,color: Colors.black,size: 30,),
        SizedBox(width: 10,),
        Icon( Icons.menu,color: Colors.black,size: 30,),

      ],
    ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          SizedBox(height: 30,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(shape: BoxShape.circle,boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.35),
                    spreadRadius: 18,
                    blurRadius: 20,
                  )
                ],
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("IMAGE/img.png")
                    )),
              ),
              Text("esraa",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.black),),
              Text("Baghdad",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.black54),)
            ],
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              peofInfo(1000,"photos"),
              peofInfo(1000,"followers"),
              peofInfo(1000,"following"),
            ],
          ),
          SizedBox(height: 15,),
          Container(
            height: 400,width: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: GridView.count(crossAxisCount: 3,
              padding: EdgeInsets.all(18),
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: [
                images("IMAGE/your story.png"),
                images("IMAGE/your story.png"),
                images("IMAGE/your story.png"),
                images("IMAGE/your story.png"),
                images("IMAGE/your story.png"),
                images("IMAGE/your story.png"),
                images("IMAGE/your story.png"),
                images("IMAGE/your story.png"),
                images("IMAGE/your story.png"),

              ],),
          ),
          SizedBox(height:20,),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Icon(Icons.home,color: Colors.black,size: 35,),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 150),
                child: Icon(Icons.search,color: Colors.black,size: 35,),
              ),
              Padding(
                padding: EdgeInsets.only(left: 150),
                child: Icon(Icons.favorite,color: Colors.black,size: 35,),
              ),

              Padding(
                padding:  EdgeInsets.only(left: 90),
                child: CircleAvatar(
                  backgroundImage: AssetImage('IMAGE/your story.png',),
                  radius: 12,
                ),
              ),
            ],
          )
        ],
      ),

    );
  }
  Container images(String photo){
    return Container(
      height: 20,width: 20,
      decoration: BoxDecoration(color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(photo)
          )),
    );
  }




  Column peofInfo(int Conter,String info){
    return Column(
      children: [
        Text("$Conter",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.black),),
        Text(info,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.black54),)
      ],
    );
  }
}

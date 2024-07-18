import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class UIScreen extends StatelessWidget {
  static const String routName="FirstScreen";
  final List<String> imgList = [
    'assets/images/Image 1.png',
    'assets/images/Image 1.png',
    'assets/images/Image 1.png',
  ];
  UIScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.white,
        title:
        Image.asset("assets/images/Logo.png"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Icon(Icons.settings,color: Color(0xff4838D1),),
          )
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Categories",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                TextButton(onPressed: (){}, child: Text("See more",style: TextStyle(color: Color(0xff4838D1),fontSize: 15),)),
              ],),

            SizedBox(
              width: 550,
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  TextButton(onPressed: (){}, child: Text("Art",style: TextStyle(color: Colors.black,fontSize: 18)),style: TextButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),backgroundColor: Colors.transparent)),
                  TextButton(onPressed: (){}, child: Text("Business",style: TextStyle(color: Colors.black,fontSize: 18)),style: TextButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),backgroundColor: Colors.transparent)),
                  TextButton(onPressed: (){}, child: Text("Comedy",style: TextStyle(color: Colors.black,fontSize: 18)),style: TextButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),backgroundColor: Colors.transparent)),
                  TextButton(onPressed: (){}, child: Text("Art",style: TextStyle(color: Colors.black,fontSize: 18)),style: TextButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),backgroundColor: Colors.transparent)),
                  TextButton(onPressed: (){}, child: Text("Comedy",style: TextStyle(color: Colors.black,fontSize: 18)),style: TextButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),backgroundColor: Colors.transparent)),
                  TextButton(onPressed: (){}, child: Text("Comedy",style: TextStyle(color: Colors.black,fontSize: 18)),style: TextButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),backgroundColor: Colors.transparent)),
                  TextButton(onPressed: (){}, child: Text("Comedy",style: TextStyle(color: Colors.black,fontSize: 18)),style: TextButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),backgroundColor: Colors.transparent)),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Recommended For You",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                TextButton(onPressed: (){}, child: Text("See more",style: TextStyle(color: Color(0xff4838D1),fontSize: 15),)),
              ],),
            CarouselSlider(
              options: CarouselOptions(
                height: 500.0,
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 16/9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
              items: imgList.map((item) => Container(
                child: Center(
                    child: Image.asset(item, fit: BoxFit.cover, width: 1000)
                ),
              )).toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Best Seller",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                TextButton(onPressed: (){}, child: Text("See more",style: TextStyle(color: Color(0xff4838D1),fontSize: 15),)),
              ],),
            Row(children: [
              Image.asset('assets/images/photo2.png'),

              SizedBox(width: 15,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start
                ,children: [
                Text("Light Mage",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                Text("Laurie Forest",style: TextStyle(fontSize:15 )),
              ],)
            ],),

          ]),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(items: [

        BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home" ),
        BottomNavigationBarItem(icon: Icon(Icons.search),label:"Search" ),
        BottomNavigationBarItem(icon: Icon(Icons.library_books),label:"Libarary" ),


      ]),

    );
  }
}
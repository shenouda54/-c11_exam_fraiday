import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  static const String routName = "SecondScreen";
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Image.asset("assets/images/logo1.png"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Hello,Sara Rose",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 10,
          ),
          Text("How are you feeling today", style: TextStyle(fontSize: 18)),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [Image.asset('assets/images/love.png'), Text("Love")],
              ),
              Column(
                children: [
                  Image.asset('assets/images/cool.png'),
                  Text("Cool"),
                ],
              ),
              Column(
                children: [
                  Image.asset('assets/images/happy.png'),

                  Text("Happy"),
                ],
              ),
              Column(
                children: [
                  Image.asset('assets/images/sad.png'),
                  Text("Sad"),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Feature",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "See more",
                    style: TextStyle(color: Color(0xff027A48), fontSize: 18),
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Color(0xffECFDF3),
              height: 165,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Psitive vibes",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 19)),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Boost your mood with",
                          style: TextStyle(fontSize: 17)),
                      Text("Psitive vibes", style: TextStyle(fontSize: 17)),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Image.asset('assets/images/Play.png'),
                          SizedBox(
                            width: 5,
                          ),
                          Text("10 mins"),

                        ],
                      )
                    ],
                  ),
                  Image.asset('assets/images/photo5.png')
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Exercise",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "See more",
                    style: TextStyle(color: Color(0xff027A48), fontSize: 18),
                  )),
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 170,
                    height: 56,
                    color: Color(0xffF9F5FF),
                    child: Row(children: [
                      Image.asset("assets/images/Frame.png"),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Relaxation",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ]),
                  ),
                  Container(
                    color: Color(0xffFDF2FA),
                    width: 170,
                    height: 56,
                    child: Row(children: [
                      Image.asset("assets/images/Frame1.png"),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Meditation",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ]),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 170,
                    height: 56,
                    color: Color(0xffFFFAF5),
                    child: Row(children: [
                      Image.asset("assets/images/Group.png"),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Beathing",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ]),
                  ),
                  Container(
                    color: Color(0xffF0F9FF),
                    width: 170,
                    height: 56,
                    child: Row(children: [
                      Image.asset("assets/images/Frame2.png"),
                      SizedBox(
                        width: 15,
                      ),
                      Text(

                        "Yoga",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ]),
                  ),
                ],
              ),
            ],
          )
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
      ], selectedItemColor: Colors.teal, unselectedItemColor: Colors.grey),
    );
  }
}
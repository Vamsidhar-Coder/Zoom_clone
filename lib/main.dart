import 'package:Zoom_clone/views/Schedule.dart';
import 'package:Zoom_clone/views/join.dart';
import 'package:Zoom_clone/views/new_meeting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List body = [Homepage(), new_meeting(), Join()];
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meet & Chat"),
        centerTitle: true,
        leading: Icon(
          Icons.star_border,
          size: 30,
        ),
        backgroundColor: Colors.grey[900],
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(Icons.border_color),
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 40,
                  color: Colors.grey[100],
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        isDense: true,
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search",
                        hintStyle: TextStyle(fontWeight: FontWeight.w800),
                        contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 2)),
                  ),
                ),
              ),
              Divider(height: 10),
              SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 15),
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(new_meeting(),
                            transition: Transition.downToUp,
                            duration: Duration(milliseconds: 400));
                      },
                      child: Column(
                        children: [
                          Container(
                              child: Icon(
                                Icons.videocam,
                                size: 35,
                                color: Colors.white,
                              ),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.orange[700],
                                  borderRadius: BorderRadius.circular(20))),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "New Meeting",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 13),
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(Join(),
                            transition: Transition.downToUp,
                            duration: Duration(milliseconds: 400));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          children: [
                            Container(  
                                child: Icon(
                                  Icons.add_to_photos,
                                  size: 30,
                                  color: Colors.white,
                                ),
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    color: Colors.blue[700],
                                    borderRadius: BorderRadius.circular(20))),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Join",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(Schedule(),
                            transition: Transition.downToUp,
                            duration: Duration(milliseconds: 500));
                      },
                      child: Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          children: [
                            Container(
                                child: Icon(
                                  Icons.calendar_today,
                                  size: 28,
                                  color: Colors.white,
                                ),
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    color: Colors.blue[700],
                                    borderRadius: BorderRadius.circular(20))),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Schedule",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.defaultDialog(
                            title: "Share Screen",
                            // onCancel: () {

                            // },
                            titleStyle: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 19),
                            content: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 5, 8, 15),
                                  child: Text(
                                    "Enter Sharing key or Meeting Id to share to a Zoom Room.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  child: Center(
                                    child: TextField(
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.only(
                                              top: 10, left: 8),
                                          hintText:
                                              "Sharing key or Meeting Id",
                                          hintStyle: TextStyle(
                                              fontWeight: FontWeight.bold),
                                          enabledBorder: OutlineInputBorder(
                                              gapPadding: 0,
                                              borderRadius:
                                                  BorderRadius.circular(0))),
                                    ),
                                  ),
                                ),
                                Divider(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        print("i am trying to go back");
                                        Get.back();
                                      },
                                      child: Text(
                                        "Cancel",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 35.0,
                                      width: 1.0,
                                      color: Colors.grey,
                                    ),
                                    Text(
                                      "OK",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey),
                                    )
                                  ],
                                )
                              ],
                            ));
                      },
                      child: Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 15),
                                              child: Column(
                          children: [
                            Container(
                                child: Icon(
                                  Icons.screen_share,
                                  size: 30,
                                  color: Colors.white,
                                ),
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    color: Colors.blue[700],
                                    borderRadius: BorderRadius.circular(20))),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Share Screen",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 12,
                height: 40,
                color: Colors.grey[300],
              ),
              Container(
                // color: Colors.red,
                height: MediaQuery.of(context).size.height / 2,
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("images/message_logo.png"),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "Find People and Start Chatting!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          height: 40,
                          width: 150,
                          child: Center(
                              child: Text(
                            "Add Contacts",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    )
                  ],
                )),
              )
            ],
          ),
          Container(
            color: Colors.grey[200],
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.chat_bubble,
                        size: 25,
                        color: Colors.blue[600],
                      ),
                      Text(
                        "Meet&Chat",
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[600]),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.watch_later,
                        size: 25,
                        color: Colors.black,
                      ),
                      Text(
                        "Meetings",
                        style: TextStyle(
                          fontSize: 11,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.perm_contact_calendar,
                        size: 25,
                      ),
                      Text(
                        "Contacts",
                        style: TextStyle(fontSize: 11),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.settings,
                        size: 25,
                      ),
                      Text(
                        "Settings",
                        style: TextStyle(fontSize: 11),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:Zoom_clone/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Join extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text(
          "Start a Meeting",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Get.off(Homepage(),
                  transition: Transition.upToDown,
                  duration: Duration(milliseconds: 500));
            },
            child: Icon(Icons.arrow_back_ios)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.arrow_drop_down_circle,
                  color: Colors.blue,
                ),
                border: InputBorder.none,
                fillColor: Colors.white,
                filled: true,
                hintText: "Meeting Id",
                hintStyle: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Join with a personal link name",
                style: TextStyle(
                    color: Colors.blue[800], fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            height: 50,
            child: Center(
                child: Text(
              "19121A04P6-Vamsidahr",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            )),
            color: Colors.white,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Container(
              child: Center(
                  child: Text(
                "Join Meeting",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 22),
              )),
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.blue[700],
                  borderRadius: BorderRadius.circular(8)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
                "If you recevied an invitation link,tap on the link to join the meeting"),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
            child: Text(
              "JOIN OPTIONS",
              textAlign: TextAlign.start,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
            ),
          ),
          Container(
            height:100,
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Don't Connect To Audio",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        CupertinoSwitch(
                          activeColor: Colors.blue,
                          value: false,
                          onChanged: (value) {},
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Turn Off My Video",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 19),
                      ),
                      CupertinoSwitch( 
                        activeColor: Colors.blue,
                        value: true,
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

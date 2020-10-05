import 'package:Zoom_clone/views/meeting_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class new_meeting extends StatelessWidget {
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
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Container(
          height: 230,
          width: 1000000000000,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Video On",
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
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Use Personal Meeeting Id(PMI)",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.width / 22),
                        ),
                        Text('745 299 4884'),
                      ],
                    ),
                    CupertinoSwitch(
                      activeColor: Colors.blue,
                      value: true,
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(Meeting_screeen());
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    height: 50,
                    child: Center(
                        child: Text(
                      "Start a Meeting",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    )),
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

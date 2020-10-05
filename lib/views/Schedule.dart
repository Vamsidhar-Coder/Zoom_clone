import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Schedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Cancel",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            Text(
              "Schedule Meeting",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Text(
              "Done",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 28,
              ),
              Container(
                height: 340,
                color: Colors.white,
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: "19121A04P6 Vamsidhars Zoom Meeting",
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey),
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(18, 8, 18, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Date",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(
                            "28/09/2020 >",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      indent: 18,
                      endIndent: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(18, 8, 18, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "From",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(
                            "10:00 am >",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      indent: 18,
                      endIndent: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(18, 8, 18, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "To",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(
                            "11:00 am >",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      indent: 18,
                      endIndent: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(18, 8, 18, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Time Zone",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(
                            "GMT +5:30,India Standard Time >",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      indent: 18,
                      endIndent: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(18, 8, 18, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Repeat",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(
                            "Never >",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      indent: 18,
                      endIndent: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Use Personal Meeeting Id(PMI)",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                              Text("745 299 4884")
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
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                      "If this option is enabled, any meeting options that you change here will be applied to all meetings that use your personal meeting id",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey))),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "PASSWORD",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                ),
              ),
              Container(
                color: Colors.white,
                height: 90,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(18, 2, 18, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Meeting Password",
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
                    Divider(
                      thickness: 1,
                      indent: 18,
                      endIndent: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Password",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                            "123456",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "MEETING OPTIONS",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                ),
              ),
              Container(
                height: 150,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(18, 2, 18, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Host Video On",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          CupertinoSwitch(
                            activeColor: Colors.blue,
                            value: true,
                            onChanged: (value) {},
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      indent: 18,
                      endIndent: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(18, 2, 18, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Participant VIdeo On",
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
                    Divider(
                      thickness: 1,
                      indent: 18,
                      endIndent: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(18, 2, 18, 0),
                      child: Text(
                        "Advanced Options",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),SizedBox(height: 20,),
              Container(
                color: Colors.white,
                height: 50,
                child: Padding(
                      padding: const EdgeInsets.fromLTRB(18, 2, 18, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Add to Calender",
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
              SizedBox(height: 20,)
            ],
          ),
        ],
      ),
    );
  }
}

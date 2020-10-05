import 'package:flutter/material.dart';

import 'package:get/get.dart';

class Participants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Close",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            Text(
              "Participants(15)",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 22,
            )
          ],
        ),
        centerTitle: true,
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: 15,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(top: 5, left: 6),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  image: DecorationImage(
                                      image: AssetImage("images/sample.png"),
                                      fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                "19121A04P6 Vamsidhar",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.width / 22),
                              ),
                            ),
                          ],
                        ),
                        Container(
                            child: Row(
                          children: [
                            Icon(
                              Icons.videocam_off,
                              color: Colors.red,
                              size: 30,
                            ),
                            Icon(
                              Icons.mic_off,
                              color: Colors.red,
                              size: 30,
                            )
                          ],
                        ))
                      ],
                    ),
                    Divider(),
                    index == 14
                        ? SizedBox(
                            height: 50,
                          )
                        : SizedBox(
                            width: 0,
                            height: 0,
                          )
                  ],
                ),
              );
            },
          ),
          Container(
            height: 50,
            color: Colors.grey[300],
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40,
                        width: 100,
                        child: Center(
                            child: Text(
                          "Invite",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        )),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.blue, width: 2)),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 100,
                            child: Center(
                                child: Text(
                              "Mute All",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            )),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border:
                                    Border.all(color: Colors.blue, width: 2)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Container(
                              height: 40,
                              width: 40,
                              child: Center(
                                child: Icon(Icons.done_outline_sharp),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border:
                                      Border.all(color: Colors.blue, width: 2)),
                            ),
                          ),
                        ],
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

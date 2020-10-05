import 'package:Zoom_clone/views/Paticipants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Meeting_screeen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Icon(
                          Icons.volume_up,
                          color: Colors.white,
                          size: 21,
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Icon(
                                  Icons.verified_user,
                                  color: Colors.green,
                                  size: 18,
                                ),
                              ),
                              Text(
                                "Zoom",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              "33:51",
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text(
                          "Leave",
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              height: 60,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.mic_off,
                        color: Colors.red,
                        size: 35,
                      ),
                      Text(
                        "Unmute",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.videocam_off,
                        color: Colors.red,
                        size: 35,
                      ),
                      Text(
                        "Start Video",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.screen_share,
                        color: Colors.green,
                        size: 35,
                      ),
                      Text(
                        "Share",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(Participants());

                      print("object");
                    },
                    child: Column(
                      children: [
                        Icon(
                          Icons.person_outline,
                          color: Colors.white,
                          size: 35,
                        ),
                        Text(
                          "Participants",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                        size: 35,
                      ),
                      Text(
                        "More",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

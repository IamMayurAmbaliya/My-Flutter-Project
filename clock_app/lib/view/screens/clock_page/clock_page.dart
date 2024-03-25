import 'dart:math';

import 'package:clock_app/view/components/clock_option.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClockPage extends StatefulWidget {
  const ClockPage({super.key});

  @override
  State<ClockPage> createState() => _ClockPageState();
}

class _ClockPageState extends State<ClockPage> {
  bool Analog = false;
  bool Strap = false;
  bool Digital = false;
  bool timer = false;

  final List<String> BackgroundImage = [
    "https://wallpapers.com/images/hd/3d-phone-glowing-squares-illusion-5caz7bhoq104m211.jpg",
    "https://img.pikbest.com/origin/08/99/02/39PpIkbEsT4XC.jpg!w700wp",
    "https://images.unsplash.com/photo-1598040795256-03d22d952f4d?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8M2QlMjBiYWNrZ3JvdW5kfGVufDB8fDB8fHww",
    "https://wallpapers.com/images/hd/3d-phone-circles-bump-illusion-bvpfyeyi2m2z8w8f.jpg",
    "https://wallpapers.com/images/hd/3d-phone-black-gold-hollow-balls-87kvv84b2fd0sr9b.jpg",
    "https://wallpapercave.com/wp/wp4981099.jpg",
  ];

  int selectedImage = 0;

  @override
  Widget build(BuildContext context) {
    TextScaler text = MediaQuery.textScalerOf(context);
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;

    int hour = 0;
    int minute = 0;
    int second = 0;

    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            //Header
            UserAccountsDrawerHeader(
              accountName: Text(
                "Mayur",
                style: TextStyle(
                  fontSize: text.scale(20),
                ),
              ),
              accountEmail: Text(
                "Mayur@Gmail.com",
                style: TextStyle(
                  fontSize: text.scale(20),
                ),
              ),
              currentAccountPicture: const CircleAvatar(
                foregroundImage: NetworkImage(
                  "https://wallpapercave.com/wp/wp12403966.png",
                ),
              ),
            ),
            ClockOptionTile(
              title: "ANALOG CLOCK",
              val: Analog,
              onChanged: (val) => setState(
                () {
                  Analog = !Analog;
                },
              ),
            ),
            ClockOptionTile(
              title: "DIGITAL CLOCK",
              val: Digital,
              onChanged: (val) => setState(
                () {
                  Digital = !Digital;
                },
              ),
            ),
            ClockOptionTile(
              title: "STRAP CLOCK",
              val: Strap,
              onChanged: (val) => setState(
                () {
                  Strap = !Strap;
                },
              ),
            ),
            ClockOptionTile(
              title: "TIMER CLOCK",
              val: timer,
              onChanged: (val) => setState(
                () {
                  timer = !timer;
                },
              ),
            ),
            const Divider(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...BackgroundImage.map(
                    (e) => Container(
                      height: h * 0.15,
                      width: w * 0.15,
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: (BackgroundImage.indexOf(e) == selectedImage)
                            ? Border.all(color: Colors.grey)
                            : null,
                        image: DecorationImage(
                          image: NetworkImage(e),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ).toList(),
                ],
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          "CLOCK",
          style: TextStyle(
            fontSize: text.scale(20),
          ),
        ),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: h,
              width: w,
              color: Colors.white,
            ),
            Visibility(
              visible: Analog,
              child: Stack(
                children: [
                  ...List.generate(
                    60,
                    (index) => Transform.rotate(
                      angle: index * (pi * 2) / 60,
                      child: Divider(
                        color: (index % 5 == 0) ? Colors.red : Colors.grey,
                        thickness: (index % 5 == 0) ? 4 : 2,
                        indent: (index % 5 == 0) ? h * 0.42 : h * 0.45,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Visibility(
              visible: Analog,
              child: CircleAvatar(
                radius: w * 0.015,
                backgroundColor: Colors.black26,
              ),
            ),

            // Second

            Visibility(
              visible: Analog,
              child: Transform.rotate(
                angle: second * (pi * 2) / 60 + pi / 2,
                child: Divider(
                  color: Colors.redAccent,
                  thickness: 2,
                  indent: w * 0.09,
                  endIndent: w * 0.4,
                ),
              ),
            ),

            // Minute
            Visibility(
              visible: Analog,
              child: Transform.rotate(
                // Rotate for 90°
                angle: pi / 2,
                child: Transform.rotate(
                  angle: minute * (pi * 2) / 60,
                  child: Divider(
                    color: Colors.blue,
                    thickness: 3,
                    indent: w * 0.15,
                    endIndent: w * 0.45,
                  ),
                ),
              ),
            ),

            // hour
            Visibility(
              visible: Analog,
              child: Transform.rotate(
                angle: pi / 2,
                child: Transform.rotate(
                  angle: hour * (pi * 2) / 12,
                  child: Divider(
                    color: Colors.black54,
                    thickness: 5,
                    indent: w * 0.25,
                    endIndent: w * 0.45,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: must_be_immutable
import 'package:adqar_app/screens/sc.dart';
import 'package:adqar_app/screens/tasbih.dart';

import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';

import '../model/model.dart';
import 'about.dart';
import 'alaah99.dart';
import 'ayat.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "أذكاري",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                FlutterIslamicIcons.mosque,
                size: 50,
                color: Colors.white,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(
                  25,
                ))),
            width: 300,
            height: 70,
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: SizedBox(
                        height: 60,
                        width: 75,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.settings,
                              ),
                              Text(
                                "الاعدادات",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ]),
                      ),
                    ),
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TasbihSecreen(),
                          )),
                      child: SizedBox(
                        height: 60,
                        width: 75,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                FlutterIslamicIcons.tasbih,
                              ),
                              Text(
                                "تسبيح",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ]),
                      ),
                    ),
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const About())),
                      child: SizedBox(
                        height: 60,
                        width: 75,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.help,
                              ),
                              Text(
                                "حول",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ]),
                      ),
                    ),
                  ]),
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: ListView(children: [
              Cards(
                title: "اذكار الصباح",
                icon: Icons.sunny,
                boxIcon: Colors.orange[800],
                route: Adia(
                  list: morning,
                  title: "اذكار الصباح",
                ),
              ),
              Cards(
                title: "اذكار المساء",
                icon: FlutterIslamicIcons.islam,
                boxIcon: Colors.blue[800],
                route: Adia(
                  list: nigth,
                  title: "اذكار المساء",
                ),
              ),
              Cards(
                title: "اذكار النوم",
                icon: Icons.bed,
                boxIcon: Colors.red[800],
                route: Adia(
                  list: sleep,
                  title: "اذكار النوم",
                ),
              ),
              Cards(
                title: "الاستيقاظ",
                icon: FlutterIslamicIcons.solidMuslim2,
                boxIcon: Colors.green[800],
                route: Adia(
                  list: afterSleep,
                  title: "الاستيقاظ",
                ),
              ),
              Cards(
                title: "الْأدْعِيَةُ القرآنية",
                icon: FlutterIslamicIcons.solidPrayer,
                boxIcon: Colors.purple[700],
                route: Adia(
                  list: adiaFromQuran,
                  title: "الْأدْعِيَةُ القرآنية",
                ),
              ),
              Cards(
                title: "الْأدْعِيَةُ النبويه",
                icon: FlutterIslamicIcons.solidPrayer,
                boxIcon: Colors.red[700],
                route: Adia(
                  list: adiaFromNabi,
                  title: "الْأدْعِيَةُ النبويه",
                ),
              ),
              Cards(
                title: "الاذكار بعد الصلاه",
                icon: FlutterIslamicIcons.community,
                boxIcon: Colors.brown[800],
                route: Adia(
                  list: afterPrey,
                  title: "الاذكار بعد الصلاه",
                ),
              ),
              Cards(
                title: "أسماء الله الحسنى",
                icon: FlutterIslamicIcons.solidAllah99,
                boxIcon: Colors.blue[700],
                route: Alah99(
                  list: allah99,
                  title: "أسماء الله الحسنى",
                ),
              ),
              Cards(
                title: "سوره الكهف",
                icon: FlutterIslamicIcons.solidQuran,
                boxIcon: Colors.orange[800],
                route: Ayat(
                  list: aya2,
                  title: "سوره الكهف",
                ),
              ),
              Cards(
                title: "ايه الكرسي",
                icon: FlutterIslamicIcons.solidQuran2,
                boxIcon: Colors.red[800],
                route: Ayat(
                  list: aya1,
                  title: "ايه الكرسي",
                ),
              ),
            ]),
          ))
        ],
      )),
    );
  }
}

class Cards extends StatelessWidget {
  String title;
  IconData icon;
  // ignore: prefer_typing_uninitialized_variables
  var boxIcon;
  // ignore: prefer_typing_uninitialized_variables
  var route;
  Cards(
      {super.key,
      required this.icon,
      required this.route,
      required this.title,
      required this.boxIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => route));
        },
        child: Container(
          width: double.infinity,
          height: 70,
          decoration: const BoxDecoration(
              color: Colors.black45,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        color: boxIcon,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(40),
                        )),
                    child: Icon(
                      icon,
                      size: 50,
                      color: Colors.white,
                    )),
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

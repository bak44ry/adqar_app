import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'حول التطبيق',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(children: [
          Column(
            children: const [
              Text(
                "المراجع",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 0,
                color: Colors.black45,
                child: ListTile(
                  trailing: Icon(
                    FlutterIslamicIcons.allah,
                    color: Colors.white,
                  ),
                  title: Text(
                    'islambook.com',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
              Card(
                elevation: 0,
                color: Colors.black45,
                child: ListTile(
                  trailing: Icon(
                    FlutterIslamicIcons.allah,
                    color: Colors.white,
                  ),
                  title: Text(
                    'hijridates.com',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
              Card(
                elevation: 0,
                color: Colors.black45,
                child: ListTile(
                  trailing: Icon(
                    FlutterIslamicIcons.allah,
                    color: Colors.white,
                  ),
                  title: Text(
                    'holyquran.net',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: const [
              Text(
                "انشئ من قبل",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 0,
                color: Colors.black45,
                child: ListTile(
                  trailing: Icon(
                    FlutterIslamicIcons.muslim2,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Bakry Saeed Al-ramadi',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  subtitle: Text(
                    'bak44ry@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

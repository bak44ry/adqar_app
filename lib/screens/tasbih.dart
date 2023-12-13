import 'package:flutter/material.dart';

class TasbihSecreen extends StatefulWidget {
  const TasbihSecreen({Key? key}) : super(key: key);

  @override
  State<TasbihSecreen> createState() => _TasbihSecreenState();
}

class _TasbihSecreenState extends State<TasbihSecreen> {
  int count = 0;
  int total = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
              onPressed: () {
                setState(() {
                  total = 0;
                  count = 0;
                });
              },
              child: const Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text(
                  "تصفير",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white),
                ),
              ))
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
              child: Container(
            width: 350,
            height: 80,
            decoration: const BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: const Center(
              child: Text(
                "سبحان الله وبحمده",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          )),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 300,
            height: 300,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  count++;
                  total++;
                  if (count > 33) {
                    count = 0;
                  }
                });
              },
              style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(), backgroundColor: Colors.black45),
              child: Center(
                child: Text(
                  "$count",
                  style: const TextStyle(
                      fontSize: 120, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
              child: Container(
            width: 250,
            height: 80,
            decoration: const BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Center(
              child: Text(
                "$total : الاجمالي",
                style: const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          )),
        ],
      ),
    );
  }
}

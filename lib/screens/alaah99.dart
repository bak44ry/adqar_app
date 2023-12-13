import 'package:flutter/material.dart';

import '../model/model.dart';

// ignore: must_be_immutable
class Alah99 extends StatefulWidget {
  String title;

  List list;
  Alah99({super.key, required this.title, required this.list});

  @override
  State<Alah99> createState() => _Alah99State();
}

class _Alah99State extends State<Alah99> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            widget.title,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4),
              itemCount: allah99.length,
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      width: 40,
                      height: 20,
                      decoration: const BoxDecoration(
                          color: Colors.black45,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Center(
                          child: Text(
                        widget.list[index],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                    ),
                  )),
        ));
  }
}

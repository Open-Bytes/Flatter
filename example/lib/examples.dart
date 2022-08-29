import 'package:flatter/flatter.dart';
import 'package:flutter/material.dart';

class Examples extends StatelessWidget {
  const Examples({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('Examples');
  }

  Widget example1Classic() {
    return InkWell(
      onTap: () {},
      child: const Center(
        child: Padding(
            padding: EdgeInsets.all(20),
            child: DecoratedBox(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      blurRadius: 20,
                      spreadRadius: 1.0,
                      offset: Offset(10.0, 10.0))
                ]),
                child: Text(
                  'Example',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold),
                ))),
      ),
    );
  }

  Widget example1Flat() {
    return const Text('Example')
        .textStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold)
        .shadow(color: Colors.black, blurRadius: 20, spreadRadius: 1.0)
        .padding(20)
        .center()
        .inkWell(onTap: () {});
  }
}

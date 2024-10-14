import 'package:flutter/material.dart';

class Interface extends StatefulWidget {
  const Interface({super.key});

  @override
  State<Interface> createState() => _InterfaceState();
}

class _InterfaceState extends State<Interface> {
  double nameX = 0;
  Offset nameXY = Offset(0, 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(
        child: GestureDetector(
          onVerticalDragUpdate: (details) {
            setState(() {
              nameXY = details.localPosition;
            });
          },
          onVerticalDragDown: (details) {
            setState(() {
              nameX = details.localPosition.dx;
            });
          },
          child: Container(
            height: MediaQuery.sizeOf(context).height * 0.7,
            width: MediaQuery.sizeOf(context).width * 0.7,
            decoration: const BoxDecoration(
              color: Colors.red
            ),
            child: Column(
              children: [
                Text('$nameX, $nameXY'),
                SizedBox(
                   height: MediaQuery.sizeOf(context).height * 0.65,
            width: MediaQuery.sizeOf(context).width * 0.7,
                  child: GridView.builder(
                              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: (MediaQuery.sizeOf(context).width * 0.7)/12,
                  childAspectRatio: 1,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0),
                              itemCount: 264,
                              itemBuilder: (BuildContext ctx, index) {
                                return Container(
                  width: 10,
                  height: 10,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      border: Border.all(
                        color: Colors.black,
                      )
                      ),
                  child: const Text('a'),
                                );
                              }),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
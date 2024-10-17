import 'package:flutter/material.dart';



class Interface extends StatefulWidget {
  const Interface({super.key});

  @override
  State<Interface> createState() => _InterfaceState();
}

class _InterfaceState extends State<Interface> {
  double nameX = 0;
  Offset nameXY = Offset(0, 0);
  List<String> test = ['q','a','q','b','w','e','r','t','y','u','i','o','p','a','s','d','f','g','h','j','k','l',';','x','c','v','b','n','m',',','q','e','r','t','y','u','i','i','o','u','i','y','i','o','s','d','f','g','h','c','x','z','v','d','b','d','a','e','w','e','b','w','e','s','e','','t','r','g','n',];
  List check = []; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Align(
        alignment: AlignmentDirectional.topCenter,
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
            height: MediaQuery.sizeOf(context).height * 0.8,
            width: MediaQuery.sizeOf(context).width * 0.98,
            decoration: const BoxDecoration(
              color: Colors.red
            ),
            child: Column(
              children: [
                Text('${nameX.roundToDouble()}, $nameXY,$check',),
                SizedBox(
                   height: MediaQuery.sizeOf(context).height * 0.75,
            width: MediaQuery.sizeOf(context).width * 0.98,
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: (MediaQuery.sizeOf(context).width * 0.98)/12,
                  mainAxisExtent: (MediaQuery.sizeOf(context).height * 0.75)/12,
                  childAspectRatio: 1,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0),
                              itemCount: test.length,
                              itemBuilder: (BuildContext ctx, index) {
                                return GestureDetector(
                                  onPanStart: (details) {
                                     setState(() {
                                      check.add(test[index]);
                                    });
                                  },
                                  onPanEnd: (details) {
                                    setState(() {
                                      check.add(test[index]);
                                    });
                                  },
                                  // onHorizontalDragUpdate: (details) {
                                  //   setState(() {
                                  //     check.add(test[index]);
                                  //   });
                                  // },
                                  child: Container(
                                                    width: 10,
                                                    height: 10,
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                        color: Colors.amber,
                                                        border: Border.all(
                                                          color: Colors.black,
                                                        )
                                                        ),
                                                    child: Text(test[index]),
                                  ),
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
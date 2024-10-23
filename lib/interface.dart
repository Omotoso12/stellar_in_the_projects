import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stellar_in_the_project/game_manager/game_answers.dart';
import 'package:stellar_in_the_project/game_manager/game_controller.dart';
import 'package:stellar_in_the_project/game_manager/game_letters.dart';

class Interface extends ConsumerStatefulWidget {
  const Interface({super.key});

  @override
  ConsumerState<Interface> createState() => _InterfaceState();
}

class _InterfaceState extends ConsumerState<Interface> {
  Offset nameXY = Offset.zero;

  @override
  void initState() {
    ref.read(gameControlProvider.notifier);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final gameControl = ref.read(gameControlProvider.notifier);
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Align(
            alignment: AlignmentDirectional.topCenter,
            child: GestureDetector(
              onPanStart: (details) {
                gameControl.setIndexListToEmpty();
              },
              onPanUpdate: (details) {
                setState(() {
                  nameXY = details.localPosition;
                  gameControl.calculateIntersctionPoints(
                      MediaQuery.sizeOf(context).height,
                      MediaQuery.sizeOf(context).width,
                      nameXY.dy,
                      nameXY.dx);
                });
              },
              onPanEnd: (details) {
              gameControl.getCorrectAnswer(allAnswers, ref.read(gameControlProvider).indexList);           
              },
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.8,
                width: MediaQuery.sizeOf(context).width * 0.98,
                child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent:
                            (MediaQuery.sizeOf(context).width * 0.98) / 12,
                        mainAxisExtent:
                            (MediaQuery.sizeOf(context).height * 0.8) / 22,
                        childAspectRatio: 1,
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 0),
                    itemCount: gameAlphabets.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return Container(
                        width: 10,
                        height: 10,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                            )),
                        child: Text(
                          gameAlphabets[index].toUpperCase(),
                          style: const TextStyle(
                              fontFamily: 'Artemotion',
                              fontSize: 32,
                              fontWeight: FontWeight.w600),
                        ),
                      );
                    }),
              ),
            ),
          ),
          Container(
            color: Colors.blue,
            height: MediaQuery.sizeOf(context).height * 0.15 ,
            width: MediaQuery.sizeOf(context).width,
            child: Column(
              children: [
                Row(
                  children: [

                  ],
                ),
                Center(
                  child: Text(
                    '$nameXY, ${ref.watch(gameControlProvider).indexList}, ${ref.watch(gameControlProvider).markAnswer})',
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

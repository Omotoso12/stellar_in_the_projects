import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stellar_in_the_project/game_manager/game_answers.dart';
import 'package:stellar_in_the_project/game_manager/game_controller.dart';
import 'package:stellar_in_the_project/game_manager/game_letters.dart';
import 'package:stellar_in_the_project/game_ui/answers_ui.dart';
import 'package:stellar_in_the_project/game_ui/shade_answers.dart';

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
    final double sWidth = MediaQuery.sizeOf(context).width / 4.5;
    final double sHeight = MediaQuery.sizeOf(context).height * 0.04;

    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(height: 10),
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
                gameControl.getCorrectAnswer(
                    allAnswers, ref.read(gameControlProvider).indexList);
              },
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.8,
                width: MediaQuery.sizeOf(context).width * 0.98,
                child: Stack(
                  children: [
                    ShadeAnswers(
                        showShade1:
                            ref.watch(gameControlProvider).markAnswer[0],
                        showShade2:
                            ref.watch(gameControlProvider).markAnswer[1],
                        showShade3:
                            ref.watch(gameControlProvider).markAnswer[2],
                        showShade4:
                            ref.watch(gameControlProvider).markAnswer[3],
                        showShade5:
                            ref.watch(gameControlProvider).markAnswer[4],
                        showShade6:
                            ref.watch(gameControlProvider).markAnswer[5],
                        showShade7:
                            ref.watch(gameControlProvider).markAnswer[6],
                        showShade8:
                            ref.watch(gameControlProvider).markAnswer[7],
                        showShade9:
                            ref.watch(gameControlProvider).markAnswer[8],
                        showShade10:
                            ref.watch(gameControlProvider).markAnswer[9],
                        showShade11:
                            ref.watch(gameControlProvider).markAnswer[10]),
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.transparent,
                          border: Border(
                              top: BorderSide(
                                  style: BorderStyle.solid,
                                  color: Colors.black),
                              bottom: BorderSide(
                                  style: BorderStyle.solid,
                                  color: Colors.black),
                              right: BorderSide(color: Colors.black))),
                      height: MediaQuery.sizeOf(context).height * 0.8,
                      width: MediaQuery.sizeOf(context).width * 0.98,
                      child: GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent:
                                      (MediaQuery.sizeOf(context).width *
                                              0.98) /
                                          12,
                                  mainAxisExtent:
                                      (MediaQuery.sizeOf(context).height *
                                              0.8) /
                                          22,
                                  childAspectRatio: 1,
                                  crossAxisSpacing: 0,
                                  mainAxisSpacing: 0),
                          itemCount: gameAlphabets.length,
                          itemBuilder: (BuildContext ctx, index) {
                            return Container(
                              width: 10,
                              height: 10,
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border(
                                      bottom: BorderSide(color: Colors.black),
                                      left: BorderSide(color: Colors.black))),
                              child: SizedBox(
                                width:
                                    (MediaQuery.sizeOf(context).width * 0.98) /
                                        14,
                                height:
                                    (MediaQuery.sizeOf(context).height * 0.8) /
                                        24,
                                child: FittedBox(
                                  child: Text(
                                    gameAlphabets[index].toUpperCase(),
                                    style: const TextStyle(
                                        fontFamily: 'Artemotion',
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                    
                  ],
                ),
              ),
            ),
          ),
          AnswersUi(
              aWidth: sWidth,
              aHeight: sHeight,
              showIcon1: ref.watch(gameControlProvider).markAnswer[0],
              showIcon2: ref.watch(gameControlProvider).markAnswer[1],
              showIcon3: ref.watch(gameControlProvider).markAnswer[2],
              showIcon4: ref.watch(gameControlProvider).markAnswer[3],
              showIcon5: ref.watch(gameControlProvider).markAnswer[4],
              showIcon6: ref.watch(gameControlProvider).markAnswer[5],
              showIcon7: ref.watch(gameControlProvider).markAnswer[6],
              showIcon8: ref.watch(gameControlProvider).markAnswer[7],
              showIcon9: ref.watch(gameControlProvider).markAnswer[8],
              showIcon10: ref.watch(gameControlProvider).markAnswer[9],
              showIcon11: ref.watch(gameControlProvider).markAnswer[10]),
          // Center(
          //   child: Text(
          //     '$nameXY, ${ref.watch(gameControlProvider).indexList}, ${ref.watch(gameControlProvider).markAnswer})',
          //   ),
          // ),
        ],
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:fogo/controllers/count_controller.dart';

import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isTap = false;
  final int _duration = 7;
  final CountDownController _controller = CountDownController();
  int count = 0;

  List<String> text = [
    'Between each session there is a delay of seven seconeds.',
    'Once you hit "Start" it will initiate a count down.',
    'At the end of the count down,it will play the sound following which you can practice.'
  ];

  // Future<int?> getData(String key) async {
  //   var pref = await SharedPreferences.getInstance();
  //   var getvalue = pref.getInt(key);

  //   setState(() {
  //     count = getvalue!;
  //   });
  // }

  final CountController countController = CountController();

  @override
  void initState() {
    countController.getData('count');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final countValue = Provider.of<HeightCount>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 45, 30, 10),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/icons/fogo_icon.png'),
              SizedBox(
                height: 40,
              ),
              Text(
                'LETS PRACTICE',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                width: 289,
                height: 289,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(150),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFC6C6C6),
                        spreadRadius: 5,
                        blurRadius: 15,
                      )
                    ]),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _isTap = !_isTap;
                    });
                  },
                  child: _isTap
                      ? CircularCountDownTimer(
                          width: 289,
                          height: 289,
                          duration: _duration,
                          controller: _controller,
                          fillColor: Color(0xFFC41E4C),
                          ringColor: Colors.grey[300]!,
                          strokeWidth: 20,
                          strokeCap: StrokeCap.round,
                          autoStart: true,
                          isReverse: true, isReverseAnimation: true,
                          textFormat: CountdownTextFormat.S,
                          textStyle: TextStyle(fontSize: 27),
                          onComplete: () {
                            // count++;

                            countController.saveData('count');
                            _controller.restart(duration: _duration);
                          },
                          // timeFormat{terFunction:
                          //     (defaultFormatterFunction, duration) {
                          //   if (duration.inSeconds == 0) {
                          //     // only format for '0'
                          //     return "Start";
                          //   } else {
                          //     // other durations by it's default format
                          //     return Function.apply(
                          //         defaultFormatterFunction, [duration]);
                          //   }
                          // },
                        )
                      : Center(
                          child: Text(
                            _isTap ? 'Stop' : 'Start',
                            style: TextStyle(
                              fontSize: 27,
                              color: Color(0xFF404BE4),
                            ),
                          ),
                        ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'HOW IT WORKS',
                    style: TextStyle(fontSize: 20),
                  ),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: text.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 16,
                              height: 16,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: Color(0xFF1029ED),
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Text(
                                text[index],
                                style: TextStyle(fontSize: 14),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        )
                      ],
                    ),
                  )
                ],
              )

              //
            ],
          ),
        ),
      ),
    );
  }
}

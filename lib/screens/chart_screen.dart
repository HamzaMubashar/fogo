import 'package:flutter/material.dart';
import 'package:fogo/controllers/count_controller.dart';
import 'package:get/get.dart';

import 'package:shared_preferences/shared_preferences.dart';

class ChartScreen extends StatefulWidget {
  @override
  State<ChartScreen> createState() => _ChartScreenState();
}

class _ChartScreenState extends State<ChartScreen> {
  List<String> chartDays = [
    'M',
    'T',
    'W',
    'T',
    'F',
    'S',
    'S',
  ];

  List<Color> chartColor = [
    const Color(0xFF808DF0),
    Color(0xFF5465E6),
    Color(0xFF808DF0),
    Color(0xFF5465E6),
    Color(0xFF808DF0),
    Color(0xFF5465E6),
    Color(0xFF808DF0),
  ];

  // void getValue() async {
  //   var pref = await SharedPreferences.getInstance();
  //   var getvalue = pref.getInt('count');

  //   setState(() {
  //     value = getvalue ?? 0;
  //   });
  // }

  final countController = Get.put(CountController());
  double? totalPCT;

  @override
  void initState() {
    countController.getData('count');
    // totalPCT = ((countController.count!.value) / 230) * 100;
    // print('${countController.count.value.toString()}');

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 45, horizontal: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset('assets/icons/fogo_icon.png'),
            ),
            const SizedBox(
              height: 46,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                'ANALYTICS',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                'Each day you have practice this week',
                style: TextStyle(fontSize: 14),
              ),
            ),
            // SizedBox(
            //   height: 40,
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              // child: Chart(
              //     values: chartData!, colors: chartColor, days: chartDays),
              child: SizedBox(
                width: 390,
                height: 400,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  // physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: chartDays.length,
                  itemBuilder: (context, index) => GetBuilder<CountController>(
                      builder: (_) => Row(
                            children: [
                              SizedBox(
                                width: 3,
                              ),
                              Container(
                                width: 47,
                                height: 302,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey[300]!,
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                    )
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        chartDays[index],
                                      ),
                                      // '${heightValue.heightValue()}'
                                      Obx(
                                        () => Column(
                                          children: [
                                            Text(countController.count.value
                                                    .toString()
                                                // 'r',
                                                ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Container(
                                              width: 19,
                                              height: totalPCT,
                                              // heightValue.heightValue().toDouble(),
                                              decoration: BoxDecoration(
                                                color: chartColor[index],
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              )
                            ],
                          )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

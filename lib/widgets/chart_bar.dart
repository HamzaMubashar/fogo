// import 'package:flutter/material.dart';

// class ChartBar extends StatefulWidget {
//   final int value;
//   final String day;
//   // final Color color;
//   ChartBar({required this.value, required this.day});

//   @override
//   State<ChartBar> createState() => _ChartBarState();
// }

// class _ChartBarState extends State<ChartBar> {
//   int _value = 0;
//   @override
//   void initState() {
//     // TODO: implement initSta te
//     super.initState();
//     _value = widget.value;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(10.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             widget.day,
//           ),
//           Column(
//             children: [
//               Text('14'),
//               SizedBox(
//                 height: 5,
//               ),
//               Container(
//                 width: 19,
//                 height: _value.toDouble(),
//                 decoration: BoxDecoration(
//                     color: Colors.amber,
//                     borderRadius: BorderRadius.circular(5)),
//               )
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }

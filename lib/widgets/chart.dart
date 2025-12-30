// import 'package:flutter/material.dart';
// import 'package:fogo/widgets/chart_bar.dart';

// class Chart extends StatefulWidget {
//   List<double> values;
//   List<String> days;
//   List<Color> colors;
//   Chart({required this.values, required this.colors, required this.days});

//   @override
//   State<Chart> createState() => _ChartState();
// }

// class _ChartState extends State<Chart> {
//   @override
//   Widget build(BuildContext context) {
//     return Row(children: [
//       Container(
//           width: 47,
//           height: 302,
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(5),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey[300]!,
//                 spreadRadius: 2,
//                 blurRadius: 5,
//               )
//             ],
//           ),
//           child: Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'Days',
//                 ),
//                 Column(
//                   children: [
//                     Text('14'),
//                     SizedBox(
//                       height: 5,
//                     ),
//                     Container(
//                       width: 19,
//                       height: widget.values[1] * 100,
//                       decoration: BoxDecoration(
//                           color: Colors.amber,
//                           borderRadius: BorderRadius.circular(5)),
//                     )
//                   ],
//                 )
//               ],
//             ),
//           ))
//     ]);
//   }
// }

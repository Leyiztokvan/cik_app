// import 'package:app_vorlage_prototyp/config/palettes/color_palette.dart';
// import 'package:flutter/material.dart';

// import 'checkbox_template.dart';

// class XExpansionPanelDemo extends StatefulWidget {
//   XExpansionPanelDemo({
//     Key? key,
//   }) : super(key: key);

//   @override
//   _XExpansionPanelDemoState createState() => _XExpansionPanelDemoState();
// }

// class _XExpansionPanelDemoState extends State<XExpansionPanelDemo> {
//   late final XLabeledCheckbox labeledCheckbox;
//   late final CheckboxItem checkboxItem;

//   final List checkboxItems = [
//     CheckboxItem(
//       label: 'Price',
//     ),
//     CheckboxItem(
//       label: 'Color',
//     ),
//     CheckboxItem(
//       label: 'Size',
//     ),
//     CheckboxItem(
//       label: '???',
//     ),
//     CheckboxItem(
//       label: '???',
//     ),
//     CheckboxItem(
//       label: '???',
//     ),
//     CheckboxItem(
//       label: '???',
//     ),
//   ];

//   late Function onChanged;
//   late bool _isSelected = false;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 500,
//       width: 200,
//       padding: EdgeInsets.all(10),
//       child: ListView.builder(
//         itemCount: checkboxItems.length,
//         itemBuilder: (context, index) {
//           return Container(
//             //margin: EdgeInsets.only(bottom: 10.0),
//             child: ExpansionPanelList(
//               animationDuration: Duration(milliseconds: 500),
//               dividerColor: Colors.blueGrey,
//               expandedHeaderPadding: EdgeInsets.only(bottom: 0.0),
//               elevation: 1,
//               children: [
//                 ExpansionPanel(
//                   backgroundColor: white,
//                   canTapOnHeader: true,
//                   headerBuilder: (BuildContext context, bool isExpanded) {
//                     return Container(
//                       padding: EdgeInsets.all(10),
//                       child: Text(
//                         checkboxItems[index].label,
//                         style: TextStyle(
//                           //color: checkboxItems[index].colorsItem,
//                           fontSize: 18,
//                         ),
//                       ),
//                     );
//                   },
//                   body: Column(
//                     children: checkboxItems
//                         .map((e) => XLabeledCheckbox(
//                             checkboxItem: e,
//                             value: _isSelected,
//                             onChanged: (bool newValue) {
//                               setState(() {
//                                 _isSelected = newValue;
//                               });
//                             }))
//                         .toList(),
//                   ),
//                   isExpanded: checkboxItems[index].expanded,
//                 )
//               ],
//               expansionCallback: (int item, bool status) {
//                 setState(() {
//                   checkboxItems[index].expanded =
//                       !checkboxItems[index].expanded;
//                 });
//               },
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// import 'package:app_vorlage_prototyp/TESTs/Profile/class_Profile_tile_components.dart';
// import 'package:app_vorlage_prototyp/config/modules/border_variables_module.dart';
// import 'package:flutter/material.dart';

// class XProfileListTile extends StatelessWidget {
//   XProfileListTile({Key? key, required this.xtileComponents}) : super(key: key);
//   final XProfileTileComponents xtileComponents;

//   get index => xtileComponents.leading;

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: ListTile(
//         minLeadingWidth: 10,
//         contentPadding: EdgeInsets.only(
//             left: pPrimaryPaddingLR,
//             top: 0,
//             bottom: 0,
//             right: pPrimaryPaddingLR),
//         // horizontalTitleGap: 10,
//         shape: RoundedRectangleBorder(borderRadius: rPrimaryRadiusAll),
//         onTap: () {
//           // Navigator.push(
//           //     context,
//           //     MaterialPageRoute(
//           //         builder: (context) => ProfileListTileListScreen(
//           //             tileComponents: xtileComponents)));
//         },

//         leading: xtileComponents.leading,
//         title: Text(xtileComponents.title,
//             // ),
//             textAlign: TextAlign.left,
//             style: Theme.of(context).textTheme.subtitle1),
//         // trailing: xtileComponents.trailing,
//       ),
//     );
//   }
// }

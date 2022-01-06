import 'package:app_vorlage_prototyp/tests/profile/profile_list_tiles_list.dart';
import 'package:app_vorlage_prototyp/components/app_bar/app_bar.dart';
import 'package:app_vorlage_prototyp/config/modules/border_variables_module.dart';
import 'package:app_vorlage_prototyp/config/modules/images.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class BodyProfile extends StatefulWidget {
  const BodyProfile({Key? key}) : super(key: key);

  @override
  State<BodyProfile> createState() => _BodyProfileState();
}

class _BodyProfileState extends State<BodyProfile> {
  final bool _pinned = true;
  final bool _snap = false;
  final bool _floating = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: XAppBar(
        pinned: _pinned,
        snap: _snap,
        floating: _floating,
        appBarTitle: Text('Profile'),
        onPressed: () {},
        centerTitle: true,
      ),
      body: Column(children: [
        Card(
          elevation: ePrimary,
          margin: EdgeInsets.only(
              left: mSecondaryMarginLR,
              top: mTertiaryMarginTB + 1,
              right: mSecondaryMarginLR,
              bottom: 0),
          child: Container(
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: rPrimaryRadiusAll),
            height: 145,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Card(
                    elevation: ePrimary,
                    margin: EdgeInsets.only(top: mSecondaryMarginTB),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          // color: Colors.green,
                          borderRadius: BorderRadiusDirectional.circular(40),
                          image: DecorationImage(
                            image: AssetImage(imgProfile),
                            fit: BoxFit.contain,
                          ),
                        )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    height: 15,
                    child: RichText(
                      text: TextSpan(
                        text: '${faker.person.name()}',
                        // style: newTheme().textTheme.bodyText1)),
                      ),
                    )),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 6,
                ),
                SelectableText(
                  '${faker.internet.email()}',
                  // style: newTheme().textTheme.bodyText2
                ),
              ],
            ),
          ),
        ),
        Flexible(
          child: SingleChildScrollView(
              child: Container(
            height: 344,
            // height: MediaQuery.of(context).size.height,
            margin: EdgeInsets.only(
                left: mPrimaryMarginLR, right: mPrimaryMarginLR),
            child: Container(
              margin: EdgeInsets.only(top: mSecondaryMarginLR),
              // height: 100,
              // height: MediaQuery.of(context).size.height,
              child: XProfileListTileList(),
            ),
          )),
        ),
        // Column(
        //         mainAxisAlignment: MainAxisAlignment.start,
        //         children: [
        //           Container(
        //             height: MediaQuery.of(context).size.height,
        //             width: MediaQuery.of(context).size.width,
        //             child: ListView(
        //               children: [
        //                 Container(
        //                   height: 40,
        //                   child: ListTile(
        //                     // CHANGE ROUTE
        //                     onTap: () {
        //                       // Navigator.pushNamed(context, '/home');
        //                     },
        //                     leading: Icon(Icons.person),
        //                     title: Text.rich(TextSpan(
        //                       text: 'Account',
        //                       // style: newTheme().textTheme.bodyText1
        //                     )),
        //                   ),
        //                 ),
        //                 Container(
        //                   height: 40,
        //                   child: ListTile(
        //                     leading: Icon(Icons.favorite),
        //                     title: Text.rich(TextSpan(
        //                       text: 'Favourites',
        //                       // style: newTheme().textTheme.bodyText1
        //                     )),
        //                   ),
        //                 ),
        //                 Container(
        //                   height: 40,
        //                   child: ListTile(
        //                     leading: Icon(Icons.credit_card),
        //                     title: Text.rich(TextSpan(
        //                       text: 'Payment',
        //                       // style: newTheme().textTheme.bodyText1
        //                     )),
        //                   ),
        //                 ),
        //                 Container(
        //                   height: 40,
        //                   child: ListTile(
        //                     leading: Icon(Icons.notifications),
        //                     title: Text.rich(TextSpan(
        //                       text: 'Notifications',
        //                       // style: newTheme().textTheme.bodyText1
        //                     )),
        //                   ),
        //                 ),
        //                 Container(
        //                   height: 40,
        //                   child: ListTile(
        //                     leading: Icon(Icons.info_outline),
        //                     title: Text.rich(TextSpan(
        //                       text: '???',
        //                       // style: newTheme().textTheme.bodyText1
        //                     )),
        //                   ),
        //                 ),
        //                 Container(
        //                   height: 40,
        //                   child: ListTile(
        //                     leading: Icon(Icons.logout),
        //                     title: Text.rich(
        //                       TextSpan(text: 'Logout'),
        //                       // style: newTheme().textTheme.bodyText1
        //                     ),
        //                     //trailing: Icon(Icons.ac_unit),
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        // ],
      ]),
    ));
  }
}

//       child:  ListView(
//       children: <Widget>[
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Padding(
//               padding: const EdgeInsets.only(top: 40.0, left: 10.0),
//               child: Container(
//                   child: Text(
//                 'My profile',
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34.0),
//               )),
//             ),
//             SizedBox(
//               height: 5.0,
//             ),
//             ListTile(
//               leading: Container(
//                 height: 60.0,
//                 width: 60.0,
//                 decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     image: DecorationImage(
//                         fit: BoxFit.cover,
//                         image: AssetImage('assets/profile/user-profile.jpeg'))),
//               ),
//               title: Text(
//                 //TODO: take from profile info
//                 'Matilda Brown',
//                 style: TextStyle(
//                   color: cTextColorBlack,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               subtitle: Text(
//                 //TODO: take from profile info
//                 'matildabrown@mail.com',
//                 style: TextStyle(
//                     color: Colors.grey[350], fontWeight: FontWeight.bold),
//               ),
//             ),
//             SizedBox(
//               height: 25.0,
//             ),
//             OpenFlutterMenuLine(
//                 title: 'My orders',
//                 //TODO: make short card info
//                 subtitle: 'Already Have 12 orders',
//                 onTap: (() => {
//                       // bloc..add(ProfileMyOrdersEvent()),
//                       // widget.changeView(
//                       //   changeType: ViewChangeType.Exact, index: 1)
//                     })),
//             Divider(),
//             OpenFlutterMenuLine(
//                 title: 'Shipping addresses',
//                 //TODO: make dynamic address count
//                 subtitle: '3 addresses',
//                 onTap: (() => {
//                       // widget.changeView(
//                       //   changeType: ViewChangeType.Exact, index: 2)
//                     })),
//             Divider(),
//             OpenFlutterMenuLine(
//                 title: 'Payments methods',
//                 //TODO: make short card info
//                 subtitle: 'visa **34',
//                 onTap: (() => {
//                       // widget.changeView(
//                       //   changeType: ViewChangeType.Exact, index: 3)
//                     })),
//             Divider(),
//             OpenFlutterMenuLine(
//                 title: 'Promocodes',
//                 //TODO: make dynamic later
//                 subtitle: 'You have special promocodes',
//                 onTap: (() => {
//                       // widget.changeView(
//                       //     changeType: ViewChangeType.Exact, index: 4)
//                     })),
//             Divider(),
//             OpenFlutterMenuLine(
//                 title: 'My reviews',
//                 //TODO: make dynamic later
//                 subtitle: 'review for 4 items',
//                 onTap: (() => {
//                       // widget.changeView(
//                       //     changeType: ViewChangeType.Exact, index: 5)
//                     })),
//             Divider(),
//             OpenFlutterMenuLine(
//                 title: 'Settings',
//                 subtitle: 'Notification, Password',
//                 onTap: (() => {
//                       // widget.changeView(
//                       //     changeType: ViewChangeType.Exact, index: 6)
//                       //Navigator.of(context).pushNamed(OpenFlutterEcommerceRoutes.settings)
//                     })),
//             Divider(),
//             OpenFlutterMenuLine(
//                 title: 'SignIn/SignUp',
//                 subtitle: 'Connect your web account',
//                 onTap: (() => {
//                       // Navigator.of(context).pushNamed(OpenFlutterEcommerceRoutes.signin)
//                     }))
//           ],
//         )
//       ],
//     ));
//   }
// }

// class OpenFlutterMenuLine extends StatelessWidget {
//   final String title;
//   final String subtitle;
//   final VoidCallback onTap;

//   const OpenFlutterMenuLine(
//       {Key? key,
//       required this.title,
//       required this.subtitle,
//       required this.onTap})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       child: ListTile(
//         title: Text(
//           title,
//           style: TextStyle(
//             color: cTextColorBlack,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         subtitle: Text(
//           subtitle,
//           style:
//               TextStyle(color: Colors.grey[350], fontWeight: FontWeight.bold),
//         ),
//         trailing: Icon(Icons.chevron_right),
//       ),
//       onTap: onTap,
//     );
//   }
// }

// SingleChildScrollView(
//     child: Column(
//   children: [
//     Container(
//       height: 100,
//       width: 300,
//       child: ListView.builder(
//           scrollDirection: Axis.horizontal,
//           physics: ClampingScrollPhysics(),
//           shrinkWrap: true,
//           itemCount: 25,
//           itemBuilder: (BuildContext context, int index) {
//             return Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 height: 50,
//                 width: 50,
//                 color: Colors.primaries[index % Colors.primaries.length],
//                 child: Text("List item $index"),
//               ),
//             );
//           }),
//     ),
//     ListView.builder(
//         physics: ClampingScrollPhysics(),
//         shrinkWrap: true,
//         itemCount: 25,
//         itemBuilder: (BuildContext context, int index) {
//           return Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               height: 50,
//               width: 50,
//               color: Colors.primaries[index % Colors.primaries.length],
//               child: Text("List item $index"),
//             ),
//           );
//         }),
//   ],
// )),
//     );
//   }
// }

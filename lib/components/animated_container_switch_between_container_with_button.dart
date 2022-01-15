
//   Column(
//     children: <Widget>[
//       Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: <Widget>[
//           FlatButton(
//             onPressed: () {
//               setState(() {
//                 selectedWidgetMarker = WidgetMarker.signIn;
//               });
//             },
//             child: Text(
//               "Sign In",
//               style: TextStyle(
//                   color: (selectedWidgetMarker == WidgetMarker.signIn)
//                       ? Colors.black
//                       : Colors.black12),
//             ),
//           ),
//           FlatButton(
//             onPressed: () {
//               setState(() {
//                 selectedWidgetMarker = WidgetMarker.login;
//               });
//             },
//             child: Text("Login",
//                 style: TextStyle(
//                     color: (selectedWidgetMarker == WidgetMarker.login)
//                         ? Colors.black
//                         : Colors.black12)),
//           ),
//         ],
//       ),
//

// enum WidgetMarker { signIn, login }

// class XAuthenticationFormField extends StatefulWidget {
//   const XAuthenticationFormField({Key? key}) : super(key: key);

//   @override
//   _XAuthenticationFormFieldState createState() =>
//       _XAuthenticationFormFieldState();
// }

// class _XAuthenticationFormFieldState extends State<XAuthenticationFormField>
//     with SingleTickerProviderStateMixin<XAuthenticationFormField> {
//   WidgetMarker selectedWidgetMarker = WidgetMarker.signIn;
//   late AnimationController _controller;
//   late Animation<double> _animation;

//   @override
//   void initState() {
//     super.initState();
//     _controller =
//         AnimationController(vsync: this, duration: Duration(milliseconds: 500));
//     _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _controller.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: <Widget>[
//             FlatButton(
//               onPressed: () {
//                 setState(() {
//                   selectedWidgetMarker = WidgetMarker.signIn;
//                 });
//               },
//               child: Text(
//                 "Sign In",
//                 style: TextStyle(
//                     color: (selectedWidgetMarker == WidgetMarker.signIn)
//                         ? Colors.black
//                         : Colors.black12),
//               ),
//             ),
//             FlatButton(
//               onPressed: () {
//                 setState(() {
//                   selectedWidgetMarker = WidgetMarker.login;
//                 });
//               },
//               child: Text("Login",
//                   style: TextStyle(
//                       color: (selectedWidgetMarker == WidgetMarker.login)
//                           ? Colors.black
//                           : Colors.black12)),
//             ),
//           ],
//         ),
//         FutureBuilder(
//           future: _playAnimation(),
//           builder: (BuildContext context, AsyncSnapshot snapshot) {
//             return getCustomContainer();
//           },
//         )
//       ],
//     );
//   }

//   _playAnimation() {
//     _controller.reset();
//     _controller.forward();
//   }

//   Widget getCustomContainer() {
//     switch (selectedWidgetMarker) {
//       case WidgetMarker.signIn:
//         return getSigInContainer();
//       case WidgetMarker.login:
//         return getLoginContainer();
//     }
//   }

//   Widget getSigInContainer() {
//     return FadeTransition(
//       opacity: _animation,
//       child: Container(
//         color: Colors.red,
//         height: 200,
//       ),
//     );
//   }

//   Widget getLoginContainer() {
//     return FadeTransition(
//       opacity: _animation,
//       child: Container(
//         color: Colors.green,
//         height: 300,
//       ),
//     );
//   }

//   Widget getInfoContainer() {
//     return FadeTransition(
//       opacity: _animation,
//       child: Container(
//         color: Colors.blue,
//         height: 400,
//       ),
//     );
//   }
// }

// enum WidgetMarker { graph, stats, info }

// class XAuthenticationFormField extends StatefulWidget {
//   const XAuthenticationFormField({Key? key}) : super(key: key);

//   @override
//   _XAuthenticationFormFieldState createState() =>
//       _XAuthenticationFormFieldState();
// }

// class _XAuthenticationFormFieldState extends State<XAuthenticationFormField>
//     with SingleTickerProviderStateMixin<XAuthenticationFormField> {
//   WidgetMarker selectedWidgetMarker = WidgetMarker.graph;
//   late AnimationController _controller;
//   late Animation<double> _animation;

//   @override
//   void initState() {
//     super.initState();
//     _controller =
//         AnimationController(vsync: this, duration: Duration(milliseconds: 500));
//     _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _controller.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: <Widget>[
//             FlatButton(
//               onPressed: () {
//                 setState(() {
//                   selectedWidgetMarker = WidgetMarker.graph;
//                 });
//               },
//               child: Text(
//                 "Graph",
//                 style: TextStyle(
//                     color: (selectedWidgetMarker == WidgetMarker.graph)
//                         ? Colors.black
//                         : Colors.black12),
//               ),
//             ),
//             FlatButton(
//               onPressed: () {
//                 setState(() {
//                   selectedWidgetMarker = WidgetMarker.stats;
//                 });
//               },
//               child: Text("Stats",
//                   style: TextStyle(
//                       color: (selectedWidgetMarker == WidgetMarker.stats)
//                           ? Colors.black
//                           : Colors.black12)),
//             ),
//             FlatButton(
//               onPressed: () {
//                 setState(() {
//                   selectedWidgetMarker = WidgetMarker.info;
//                 });
//               },
//               child: Text("Info",
//                   style: TextStyle(
//                       color: (selectedWidgetMarker == WidgetMarker.info)
//                           ? Colors.black
//                           : Colors.black12)),
//             ),
//           ],
//         ),
//         FutureBuilder(
//           future: _playAnimation(),
//           builder: (BuildContext context, AsyncSnapshot snapshot) {
//             return getCustomContainer();
//           },
//         )
//       ],
//     );
//   }

//   _playAnimation() {
//     _controller.reset();
//     _controller.forward();
//   }

//   Widget getCustomContainer() {
//     switch (selectedWidgetMarker) {
//       case WidgetMarker.graph:
//         return getGraphContainer();
//       case WidgetMarker.stats:
//         return getStatsContainer();
//       case WidgetMarker.info:
//         return getInfoContainer();
//     }
//     return getGraphContainer();
//   }

//   Widget getGraphContainer() {
//     return FadeTransition(
//       opacity: _animation,
//       child: Container(
//         color: Colors.red,
//         height: 200,
//       ),
//     );
//   }

//   Widget getStatsContainer() {
//     return FadeTransition(
//       opacity: _animation,
//       child: Container(
//         color: Colors.green,
//         height: 300,
//       ),
//     );
//   }

//   Widget getInfoContainer() {
//     return FadeTransition(
//       opacity: _animation,
//       child: Container(
//         color: Colors.blue,
//         height: 400,
//       ),
//     );
//   }
// }
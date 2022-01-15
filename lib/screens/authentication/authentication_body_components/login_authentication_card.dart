import 'package:app_vorlage_prototyp/config/modules/border_padding_margin_radius_etc_variables_module.dart';
import 'package:app_vorlage_prototyp/config/modules/others/class_input_text_form_field.dart';
import 'package:app_vorlage_prototyp/config/modules/typography.dart';
import 'package:app_vorlage_prototyp/config/palettes/color_palette.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class XLoginAuthenticationCard extends StatefulWidget {
  const XLoginAuthenticationCard({Key? key}) : super(key: key);

  @override
  State<XLoginAuthenticationCard> createState() =>
      _XLoginAuthenticationCardState();
}

class _XLoginAuthenticationCardState extends State<XLoginAuthenticationCard> {
  final _formKey = GlobalKey<FormState>();

  bool _visiblePassword = false;

  TextEditingController textController = TextEditingController();

  String displayText = "";

  String? _password;

  String? _email;

  String? _error;
  // double _appBarHeight = 60;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 305,
        // (MediaQuery.of(context).size.height - _appBarHeight) * 0.49,
        // height: MediaQuery.of(context).size.height * 0.6,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(rPrimaryRadius),
              bottomRight: Radius.circular(rPrimaryRadius)),
        ),
        child: Column(children: [
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Form(
              key: _formKey,
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Expanded(
                    //   child:
                    Flexible(
                      flex: 1,
                      fit: FlexFit.loose,
                      child: Padding(
                        padding: EdgeInsets.only(top: mPrimaryMarginTB),
                        child: Text(
                          displayText,
                          style: TextStyle(
                            fontSize: fontSize,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            letterSpacing: 0.1,
                            wordSpacing: 0.2,
                            color: Theme.of(context).colorScheme.error,
                          ),
                        ),
                      ),
                    ),
                    // ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.loose,
                      child: Container(
                        margin: EdgeInsets.only(
                          left: pSecondaryPaddingLR,
                          // top: mSecondaryMarginTB,
                          right: pSecondaryPaddingLR,
                        ),
                        width: MediaQuery.of(context).size.width * 1,
                        decoration: BoxDecoration(
                          borderRadius: rPrimaryRadiusAll,
                          color: transparent,
                        ),
                        child: Text("Email",
                            style: Theme.of(context).textTheme.bodyText1),
                      ),
                    ),
                    // Spacer(),
                    // Flexible(
                    //   flex: 1,
                    //   fit: FlexFit.loose,
                    //   child:
                    Container(
                      height: 40,
                      margin: EdgeInsets.only(
                        left: pSecondaryPaddingLR,
                        top: mPrimaryMarginTB,
                        right: pSecondaryPaddingLR,
                      ),

                      /// Email Address input
                      child: XInputText(
                          prefixIcon: const Icon(Icons.email_outlined),
                          hintText: 'Email Address / Username',
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          onChanged: (val) {
                            _email = val;
                          },
                          validator: (email) {
                            if (email != null &&
                                EmailValidator.validate(email)) {
                              return null;
                            }
                            return
                                // "";
                                "Invalid email address";
                          }),
                    ),
                    // ),
                    const Spacer(),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.loose,
                      child: Container(
                        margin: EdgeInsets.only(
                          left: pSecondaryPaddingLR,
                          // top: mPrimaryMarginTB * 5,
                          right: pSecondaryPaddingLR,
                        ),
                        // height: 40,
                        width: MediaQuery.of(context).size.width * 1,
                        decoration: BoxDecoration(
                          borderRadius: rPrimaryRadiusAll,
                          color: transparent,
                        ),
                        child: Text("Password",
                            style: Theme.of(context).textTheme.bodyText1),
                      ),
                    ),
                    // Spacer(),
                    // Flexible(
                    //   flex: 2,
                    //   fit: FlexFit.loose,
                    //   child:
                    Container(
                      height: 40,
                      margin: EdgeInsets.only(
                        left: pSecondaryPaddingLR,
                        top: mPrimaryMarginTB,
                        right: pSecondaryPaddingLR,
                      ),

                      /// Password input
                      child: XInputText(
                        prefixIcon: const Icon(Icons.lock_outline_rounded),
                        obscureText: !_visiblePassword,
                        hintText: 'Password',
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.visiblePassword,
                        onChanged: (val) {
                          _password = val;
                        },
                        validator: (password) {
                          if (password == null || password.isEmpty) {
                            return
                                // "";
                                "Empty password";
                          }
                          // return null;
                        },
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              _visiblePassword = !_visiblePassword;
                            });
                          },
                          child: Icon(
                            _visiblePassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
                    ),
                    // ),
                    // Spacer(),
                    Container(
                      height: 20,
                      margin: EdgeInsets.only(
                        top: mSecondaryMarginTB,
                      ),
                      alignment: Alignment.centerRight,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot password?",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: fontSize - 2,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            letterSpacing: 0.1,
                            wordSpacing: 0.2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // const Spacer(),
          Container(
              constraints: BoxConstraints(
                minWidth: MediaQuery.of(context).size.width * 0.5,
                minHeight: 40,
                maxHeight: 40,
                maxWidth: MediaQuery.of(context).size.width * 0.5,
              ),
              margin: EdgeInsets.only(
                top: mSecondaryMarginTB,
                // bottom: mPrimaryMarginTB,
                bottom: mSecondaryMarginTB,
              ),
              child: TextButton(
                onPressed: () async {
                  if (!_formKey.currentState!.validate()) {
                    setState(() {
                      _error = 'Incorrect email or password';
                    });
                  } else {
                    setState(() {
                      _error = "";
                    });
                    setState(() {
                      Navigator.pushReplacementNamed(context, '/nav');
                      // Navigator.pushNamed(context, '/nav');
                    });
                  }

                  if (_error != null || _error!.length == 0) {
                    return setState(() {
                      displayText = "$_error";
                    });
                  } else {
                    setState(() {
                      displayText = "";
                    });
                  }
                },
                child: const Text(
                  "Login",
                ),
                // ),
                // ),
                // ],
                // ),
                // )
              ))
        ]));
  }
}

// import 'package:app_vorlage_prototyp/config/modules/border_variables_module.dart';
// import 'package:app_vorlage_prototyp/config/modules/others/class_input_text_form_field.dart';
// import 'package:app_vorlage_prototyp/config/modules/typography.dart';
// import 'package:app_vorlage_prototyp/config/palettes/color_palette.dart';
// import 'package:email_validator/email_validator.dart';
// import 'package:flutter/material.dart';

// class XLoginAuthenticationCard extends StatefulWidget {
//   XLoginAuthenticationCard({Key? key}) : super(key: key);

//   @override
//   State<XLoginAuthenticationCard> createState() =>
//       _XLoginAuthenticationCardState();
// }

// class _XLoginAuthenticationCardState extends State<XLoginAuthenticationCard> {
//   final _formKey = GlobalKey<FormState>();

//   bool _visiblePassword = false;

//   TextEditingController textController = TextEditingController();

//   String displayText = "";

//   String? _password;

//   String? _email;

//   String? _error;
//   double _appBarHeight = 60;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         height: 305,
//         // (MediaQuery.of(context).size.height - _appBarHeight) * 0.49,
//         decoration: BoxDecoration(
//           color: Theme.of(context).colorScheme.background,
//           borderRadius: BorderRadius.only(
//               bottomLeft: Radius.circular(rPrimaryRadius),
//               bottomRight: Radius.circular(rPrimaryRadius)),
//         ),
//         child: Form(
//             key: _formKey,
//             child: Column(
//               children: [
//                 Expanded(
//                   child: Padding(
//                     padding: EdgeInsets.only(top: mPrimaryMarginTB),
//                     child: Text(
//                       displayText,
//                       style: TextStyle(
//                         fontSize: fontSize,
//                         fontWeight: FontWeight.w400,
//                         fontStyle: FontStyle.normal,
//                         letterSpacing: 0.1,
//                         wordSpacing: 0.2,
//                         color: Theme.of(context).colorScheme.error,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(
//                     left: pSecondaryPaddingLR,
//                     top: mSecondaryMarginTB,
//                     right: pSecondaryPaddingLR,
//                   ),
//                   width: MediaQuery.of(context).size.width * 1,
//                   decoration: BoxDecoration(
//                     borderRadius: rPrimaryRadiusAll,
//                     color: transparent,
//                   ),
//                   child: Text("Email",
//                       style: Theme.of(context).textTheme.bodyText1),
//                 ),
//                 Container(
//                   height: 40,
//                   margin: EdgeInsets.only(
//                     left: pSecondaryPaddingLR,
//                     top: mPrimaryMarginTB,
//                     right: pSecondaryPaddingLR,
//                   ),

//                   /// Email Address input
//                   child: XInputText(
//                       prefixIcon: Icon(Icons.email_outlined),
//                       hintText: 'Email Address / Username',
//                       keyboardType: TextInputType.emailAddress,
//                       textInputAction: TextInputAction.next,
//                       onChanged: (val) {
//                         _email = val;
//                       },
//                       validator: (email) {
//                         if (email != null && EmailValidator.validate(email)) {
//                           return null;
//                         }
//                         return
//                             // "";
//                             "Invalid email address";
//                       }),
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(
//                     left: pSecondaryPaddingLR,
//                     top: mPrimaryMarginTB * 5,
//                     right: pSecondaryPaddingLR,
//                   ),
//                   // height: 40,
//                   width: MediaQuery.of(context).size.width * 1,
//                   decoration: BoxDecoration(
//                     borderRadius: rPrimaryRadiusAll,
//                     color: transparent,
//                   ),
//                   child: Text("Password",
//                       style: Theme.of(context).textTheme.bodyText1),
//                 ),
//                 Container(
//                   height: 40,
//                   margin: EdgeInsets.only(
//                     left: pSecondaryPaddingLR,
//                     top: mPrimaryMarginTB,
//                     right: pSecondaryPaddingLR,
//                   ),

//                   /// Password input
//                   child: XInputText(
//                     prefixIcon: Icon(Icons.lock_outline_rounded),
//                     obscureText: !_visiblePassword,
//                     hintText: 'Password',
//                     textInputAction: TextInputAction.done,
//                     keyboardType: TextInputType.visiblePassword,
//                     onChanged: (val) {
//                       _password = val;
//                     },
//                     validator: (password) {
//                       if (password == null || password.isEmpty) {
//                         return
//                             // "";
//                             "Empty password";
//                       }
//                       // return null;
//                     },
//                     suffixIcon: InkWell(
//                       onTap: () {
//                         setState(() {
//                           _visiblePassword = !_visiblePassword;
//                         });
//                       },
//                       child: Icon(
//                         _visiblePassword
//                             ? Icons.visibility_off
//                             : Icons.visibility,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   height: 20,
//                   margin: EdgeInsets.only(
//                     top: mSecondaryMarginTB,
//                   ),
//                   alignment: Alignment.centerRight,
//                   child: OutlinedButton(
//                     onPressed: () {},
//                     child: Text(
//                       "Forgot password?",
//                       style: TextStyle(
//                         color: Theme.of(context).colorScheme.primary,
//                         fontSize: fontSize - 2,
//                         fontWeight: FontWeight.w400,
//                         fontStyle: FontStyle.normal,
//                         letterSpacing: 0.1,
//                         wordSpacing: 0.2,
//                       ),
//                     ),
//                   ),
//                 ),
//                 const Spacer(),
//                 // Container(
//                 //   margin: EdgeInsets.only(
//                 //     left: pSecondaryPaddingLR,
//                 //     top: mSecondaryMarginTB,
//                 //     right: pSecondaryPaddingLR,
//                 //   ),
//                 //   // height: 40,
//                 //   width: MediaQuery.of(context).size.width * 1,
//                 //   decoration: BoxDecoration(
//                 //     borderRadius: rPrimaryRadiusAll,
//                 //     // color: Colors.green,
//                 //   ),
//                 //   child: Text("Continue with",
//                 //       style: Theme.of(context).textTheme.bodyText1),
//                 // ),
//                 // Container(
//                 //     margin: EdgeInsets.only(
//                 //       left: pSecondaryPaddingLR,
//                 //       top: mSecondaryMarginTB,
//                 //       right: pSecondaryPaddingLR,
//                 //     ),
//                 //     // height: 40,
//                 //     width: MediaQuery.of(context).size.width * 0.4,
//                 //     decoration: BoxDecoration(
//                 //       borderRadius: rPrimaryRadiusAll,
//                 //       // color: Colors.green,
//                 //     ),
//                 //     child: Row(
//                 //       // crossAxisAlignment: CrossAxisAlignment.center,
//                 //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 //       children: [
//                 //         // Spacer(),
//                 //         GestureDetector(
//                 //           child: Container(
//                 //               alignment: Alignment.center,
//                 //               height: 25,
//                 //               decoration: BoxDecoration(
//                 //                   borderRadius: BorderRadius.circular(13)),
//                 //               child: Image(image: AssetImage(iconGoogleLogo))
//                 //               // for icon use Icon(...) instead of Image
//                 //               // Icon(Icons.),
//                 //               ),
//                 //           onTap: () {},
//                 //         ),
//                 //         GestureDetector(
//                 //           child: Container(
//                 //               alignment: Alignment.center,
//                 //               height: 26,
//                 //               decoration: BoxDecoration(
//                 //                   borderRadius: BorderRadius.circular(14)),
//                 //               child: Image(image: AssetImage(iconAppleLogo))
//                 //               // for icon use Icon(...) instead of Image
//                 //               // Icon(Icons.),
//                 //               ),
//                 //           onTap: () {},
//                 //         ),
//                 //         GestureDetector(
//                 //           child: Container(
//                 //               alignment: Alignment.center,
//                 //               height: 25,
//                 //               decoration: BoxDecoration(
//                 //                   borderRadius: BorderRadius.circular(13)),
//                 //               child: Image(image: AssetImage(iconFacebookLogo))
//                 //               // for icon use Icon(...) instead of Image
//                 //               // Icon(Icons.),
//                 //               ),
//                 //           onTap: () {},
//                 //         ),
//                 //       ],
//                 //     )),
//                 Container(
//                   constraints: BoxConstraints(
//                     minWidth: MediaQuery.of(context).size.width * 0.5,
//                     minHeight: 40,
//                     maxHeight: 40,
//                     maxWidth: MediaQuery.of(context).size.width * 0.5,
//                   ),
//                   margin: EdgeInsets.only(
//                     top: mSecondaryMarginTB,
//                     bottom: mPrimaryMarginTB,
//                   ),
//                   child: TextButton(
//                     onPressed: () async {
//                       if (!_formKey.currentState!.validate()) {
//                         setState(() {
//                           _error = 'Incorrect email or password';
//                         });
//                       } else {
//                         setState(() {
//                           _error = "";
//                         });
//                         setState(() {
//                           Navigator.pushNamed(context, '/nav');
//                         });
//                       }

//                       if (_error != null || _error!.length == 0) {
//                         return setState(() {
//                           displayText = "$_error";
//                         });
//                       } else {
//                         setState(() {
//                           displayText = "";
//                         });
//                       }
//                     },
//                     child: Text(
//                       "Login",
//                     ),
//                   ),
//                 ),
//               ],
//             )));
//   }
// }

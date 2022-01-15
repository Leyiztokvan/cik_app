import 'package:app_vorlage_prototyp/config/modules/border_padding_margin_radius_etc_variables_module.dart';
import 'package:app_vorlage_prototyp/config/modules/others/class_input_text_form_field.dart';
import 'package:app_vorlage_prototyp/config/modules/typography.dart';
import 'package:app_vorlage_prototyp/config/palettes/color_palette.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();

class XAuthenticationFormField extends StatefulWidget {
  const XAuthenticationFormField({Key? key})
      : super(
          key: key,
        );
  @override
  _XAuthenticationFormFieldState createState() =>
      _XAuthenticationFormFieldState();
}

class _XAuthenticationFormFieldState extends State<XAuthenticationFormField> {
  bool _visiblePassword = false;
  TextEditingController textController = TextEditingController();
  String displayText = "";
  String? _password;
  String? _email;
  String? _error;
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey[500],
        height: 300,
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  displayText,
                  style: TextStyle(
                    fontSize: fontSize - 4,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    letterSpacing: 0.1,
                    wordSpacing: 0.2,
                    color: Theme.of(context).colorScheme.error,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: pSecondaryPaddingLR,
                    top: mSecondaryMarginTB,
                    right: pSecondaryPaddingLR,
                  ),
                  // height: 40,
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: BoxDecoration(
                    borderRadius: rPrimaryRadiusAll,
                    color: transparent,
                  ),
                  child: Text("Email",
                      style: Theme.of(context).textTheme.headline2),
                ),
                Container(
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
                        if (email != null && EmailValidator.validate(email)) {
                          return null;
                        }
                        return
                            // "";
                            "Invalid email address";
                      }),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: pSecondaryPaddingLR,
                    top: mSecondaryMarginTB,
                    right: pSecondaryPaddingLR,
                  ),
                  // height: 40,
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: BoxDecoration(
                    borderRadius: rPrimaryRadiusAll,
                    color: transparent,
                  ),
                  child: Text("Password",
                      style: Theme.of(context).textTheme.headline2),
                ),
                Container(
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
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
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
                      "buttonLabel?",
                      // style: TextStyle(),
                    ),
                  ),
                ),
              ],
            )));
  }
}

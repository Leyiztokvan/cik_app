import 'package:app_vorlage_prototyp/components/app_bar/app_bar.dart';
import 'package:app_vorlage_prototyp/config/modules/border_padding_margin_radius_etc_variables_module.dart';
import 'package:app_vorlage_prototyp/config/modules/icons.dart';
import 'package:app_vorlage_prototyp/config/modules/images.dart';
import 'package:app_vorlage_prototyp/config/palettes/color_palette.dart';
import 'package:app_vorlage_prototyp/screens/profile/profile_body_components/profile_list_tiles_list.dart';
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
  final double _expandedHeight = 195;

  final bool _pinnedSliver = false;
  final bool _snapSliver = false;
  final bool _floatingSliver = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: XAppBar(
              pinned: _pinned,
              snap: _snap,
              floating: _floating,
              appBarTitle:
                  Text('Profile', style: Theme.of(context).textTheme.headline2),
              centerTitle: true,
            ),
            body: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                      backgroundColor: transparent,
                      automaticallyImplyLeading: false,
                      floating: _floatingSliver,
                      pinned: _pinnedSliver,
                      snap: _snapSliver,
                      expandedHeight: _expandedHeight,
                      flexibleSpace: FlexibleSpaceBar(
                        background: Column(children: [
                          Container(
                            margin: EdgeInsets.only(
                              left: bPrimaryScreenBorderLR,
                              top: mTertiaryMarginTB,
                              right: bPrimaryScreenBorderLR,
                            ),
                            decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.primary,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(rPrimaryRadius),
                                    topRight: Radius.circular(rPrimaryRadius),
                                    bottomLeft: Radius.circular(rPrimaryRadius),
                                    bottomRight:
                                        Radius.circular(rPrimaryRadius))),
                            child: Card(
                              elevation: ePrimary,
                              margin: EdgeInsets.only(
                                  left: mSecondaryMarginLR,
                                  top: mTertiaryMarginTB,
                                  right: mSecondaryMarginLR,
                                  bottom: mTertiaryMarginTB),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: rPrimaryRadiusAll),
                                height: _expandedHeight -
                                    (mTertiaryMarginTB *
                                        3), // _expandedHeight of SliverAppBar - Padding/margin around/in the Profile card
                                width: MediaQuery.of(context).size.width,
                                child: Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: Card(
                                        elevation: ePrimary,
                                        margin: EdgeInsets.only(
                                            top: mSecondaryMarginTB),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(40)),
                                        child: Container(
                                            height: 80,
                                            width: 80,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadiusDirectional
                                                      .circular(40),
                                              image: DecorationImage(
                                                image: AssetImage(imgProfile),
                                                fit: BoxFit.contain,
                                              ),
                                            )),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      height: 15,
                                      child: RichText(
                                          text: TextSpan(
                                              text: faker.person.name(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1)),
                                    ),
                                    // ignore: prefer_const_constructors
                                    SizedBox(
                                      height: 6,
                                    ),
                                    SelectableText(faker.internet.email(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ]),
                      ))
                ];
              },
              body:
                  // SizedBox(
                  //   height: 10,
                  // ),
                  //   Expanded(
                  // child:
                  SingleChildScrollView(
                      child: Container(
                margin: EdgeInsets.only(
                    left: mPrimaryMarginLR, right: mPrimaryMarginLR),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: mSecondaryMarginLR),
                      child: XProfileListTileList(),
                    ),
                    ListTile(
                      // dense: true,
                      minLeadingWidth: 10,
                      horizontalTitleGap: 10,
                      title: const Text("Logout"),
                      leading: Icon(iconLogoutOutlined),
                      onTap: () {
                        // Navigator.pushNamed(context, '/authentication');
                        Navigator.pushReplacementNamed(
                            context, '/authentication');
                      },
                    )
                  ],
                ),
              )),
              // ),
              // ]),
            )));
  }
}

import 'package:app_vorlage_prototyp/components/app_bar/sliver_appbar_with_search.dart';
import 'package:app_vorlage_prototyp/config/modules/icons.dart';
import 'package:app_vorlage_prototyp/config/modules/tiles/class_profile_tile_components.dart';
import 'package:flutter/material.dart';

class XProfileListTileListScreen extends StatelessWidget {
  final XProfileTileComponents xProfileTileComponents;

  const XProfileListTileListScreen({
    Key? key,
    required this.xProfileTileComponents,
  }) : super(key: key);

  final bool _pinned = false;
  final bool _snap = false;
  final bool _floating = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: CustomScrollView(slivers: [
            XSliverAppBarWithSearch(
                leading: GestureDetector(
                  child: Icon(iconBackwardArrow),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                pinned: _pinned,
                snap: _snap,
                floating: _floating,
                appBarTitle: Text(xProfileTileComponents.title,
                    style: Theme.of(context).textTheme.headline2),
                onPressed: () {}),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    child: Stack(children: [
                      Card(
                          color: Theme.of(context).colorScheme.surface,
                          child: Container(
                            height: MediaQuery.of(context).size.height,
                          )),
                      Placeholder(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Center(
                          child: SizedBox(
                        height: 45,
                        child: Card(
                          color: Theme.of(context).colorScheme.background,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "${xProfileTileComponents.title} Screen",
                              style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary),
                            ),
                          ),
                        ),
                      )),
                    ]),
                  ),
                ],
              ),
            )
          ])),
    );
  }
}

import 'package:app_vorlage_prototyp/components/app_bar/sliver_app_bar.dart';
import 'package:app_vorlage_prototyp/config/modules/icons.dart';
import 'package:flutter/material.dart';

class XDiscoverListTileListScreen extends StatelessWidget {
  const XDiscoverListTileListScreen({
    Key? key,
  }) : super(key: key);

  final bool _pinned = true;
  final bool _snap = false;
  final bool _floating = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: CustomScrollView(slivers: [
            XSliverAppBar(
              pinned: _pinned,
              snap: _snap,
              floating: _floating,
              appBarTitle: Text("Title...",
                  style: Theme.of(context).textTheme.headline2),
              onPressed: () {},
              leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  iconBackwardArrow,
                ),
              ),
            ),
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
                              "Screen...",
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

import 'package:flutter/material.dart';

class XTabsectionSubtitle extends StatelessWidget {
  const XTabsectionSubtitle({
    required this.tabsecondaryText,
    required this.tabtertiaryText,
    Key? key,
  }) : super(key: key);
  final String tabsecondaryText;
  final String tabtertiaryText;

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            flex: 1,
            fit: FlexFit.loose,
            child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  tabtertiaryText,
                  style: Theme.of(context).textTheme.bodyText1,
                )),
          ),
          SizedBox(
            height: 5,
          ),
          Flexible(
            flex: 2,
            child: Container(
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      child: Text(
                    tabsecondaryText,
                    style: Theme.of(context).textTheme.bodyText2,
                  )),
                  Container(
                    child: RichText(
                        text: TextSpan(
                            style: Theme.of(context).textTheme.bodyText2,
                            children: [
                          TextSpan(
                              text:
                                  'ttttttt ttttttttttt tttttttt ttttttttttttt ttttttt  tttttttttt tttttt ttttttttttttttttt tttttttttttttttttttttttt tttttttttttt ttttttttt'),
                        ])),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ]);
  }
}

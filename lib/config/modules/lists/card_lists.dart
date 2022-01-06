import 'package:app_vorlage_prototyp/components/buttons/favorite_button.dart';
import 'package:app_vorlage_prototyp/components/buttons/favorite_button_card_screen.dart';
import 'package:app_vorlage_prototyp/components/buttons/shopping_bag_button.dart';
import 'package:app_vorlage_prototyp/config/modules/cards/class_card_components.dart';
import 'package:app_vorlage_prototyp/config/modules/images.dart';
// import './test.dart' show ...Class;
import 'package:flutter/material.dart';

// TODO: DELETE THIS FILE IF YOU DON'T USE IT

final List<XXCardComponents> orginal1 = [
  XXCardComponents("title", "info"),
  XXCardComponents("title2", "info2")
];

final List<XXCardComponents> copy1 =
    orginal1.map((e) => XXCardComponents.clone(e)).toList();

final List<XCardComponents> xcardComponents = <XCardComponents>[
  // final XCardComponents _xcardComponents;
  XCardComponents(
      title: "title1 title1 title1",
      secondaryText: "ttt",
      tertiaryText: "CHF",
      price: '00.00',
      icon1: XFavoriteButton(
        // iconSize: 28,
        valueChanged: (_) {},
      ),
      icon2: XShoppingBagButton(
        valueChanged: (_) {},
      ),
      icon3: XFavoriteButtonCardScreen(
        valueChanged: (_) {},
        iconSize: icon3Size,
      ),
      icon4: XShoppingBagButton(
        valueChanged: (_) {},
        iconSize: icon4Size,
      ),
      imageData: AssetImage(
        imgProduct,
      ),
      tabTitle: 'tabTitle1',
      tabsecondaryText1: 'tabsecondaryText1',
      tabsecondaryText2: 'tabsecondaryText2',
      tabsecondaryText3: 'tabsecondaryText3',
      tabsecondaryText4: 'tabsecondaryText4',
      tabsecondaryText5: 'tabsecondaryText5',
      tabsecondaryText6: 'tabsecondaryText6',
      tabtertiaryText1: 'tabtertiaryText1',
      tabtertiaryText2: 'tabtertiaryText2',
      tabtertiaryText3: 'tabtertiaryText3',
      tabtertiaryText4: 'tabtertiaryText4',
      tabtertiaryText5: 'tabtertiaryText5',
      tabtertiaryText6: 'tabtertiaryText6'),
  XCardComponents(
      title: "title2",
      secondaryText: "ttt",
      tertiaryText: "CHF",
      price: '00',
      icon1: XFavoriteButton(
        valueChanged: (_) {},
      ),
      icon2: XShoppingBagButton(
        valueChanged: (_) {},
      ),
      icon3: XFavoriteButtonCardScreen(
        valueChanged: (_) {},
        iconSize: icon3Size,
      ),
      icon4: XShoppingBagButton(
        valueChanged: (_) {},
        iconSize: icon4Size,
      ),
      imageData: AssetImage(
        imgProduct,
      ),
      tabTitle: 'tabTitle2',
      tabsecondaryText1: 'tabsecondaryText2',
      tabsecondaryText2: 'tabsecondaryText2',
      tabsecondaryText3: 'tabsecondaryText3',
      tabsecondaryText4: 'tabsecondaryText4',
      tabsecondaryText5: 'tabsecondaryText5',
      tabsecondaryText6: 'tabsecondaryText6',
      tabtertiaryText1: 'tabtertiaryText1',
      tabtertiaryText2: 'tabtertiaryText2',
      tabtertiaryText3: 'tabtertiaryText3',
      tabtertiaryText4: 'tabtertiaryText4',
      tabtertiaryText5: 'tabtertiaryText5',
      tabtertiaryText6: 'tabtertiaryText6'),
  XCardComponents(
      title: "title3",
      secondaryText: "ttt",
      tertiaryText: "CHF",
      price: '00',
      icon1: XFavoriteButton(
        valueChanged: (_) {},
      ),
      icon2: XShoppingBagButton(
        valueChanged: (_) {},
      ),
      icon3: XFavoriteButtonCardScreen(
        valueChanged: (_) {},
        iconSize: icon3Size,
      ),
      icon4: XShoppingBagButton(
        valueChanged: (_) {},
        iconSize: icon4Size,
      ),
      imageData: AssetImage(
        imgProduct,
      ),
      tabTitle: 'tabTitle3',
      tabsecondaryText1: 'tabsecondaryText1',
      tabsecondaryText2: 'tabsecondaryText2',
      tabsecondaryText3: 'tabsecondaryText3',
      tabsecondaryText4: 'tabsecondaryText4',
      tabsecondaryText5: 'tabsecondaryText5',
      tabsecondaryText6: 'tabsecondaryText6',
      tabtertiaryText1: 'tabtertiaryText1',
      tabtertiaryText2: 'tabtertiaryText2',
      tabtertiaryText3: 'tabtertiaryText3',
      tabtertiaryText4: 'tabtertiaryText4',
      tabtertiaryText5: 'tabtertiaryText5',
      tabtertiaryText6: 'tabtertiaryText6'),
  XCardComponents(
      title: "title4",
      secondaryText: "ttt",
      tertiaryText: "CHF",
      price: '00',
      icon1: XFavoriteButton(
        valueChanged: (_) {},
      ),
      icon2: XShoppingBagButton(
        valueChanged: (_) {},
      ),
      icon3: XFavoriteButtonCardScreen(
        valueChanged: (_) {},
        iconSize: icon3Size,
      ),
      icon4: XShoppingBagButton(
        valueChanged: (_) {},
        iconSize: icon4Size,
      ),
      imageData: AssetImage(
        imgProduct,
      ),
      tabTitle: 'tabTitle4',
      tabsecondaryText1: 'tabsecondaryText1',
      tabsecondaryText2: 'tabsecondaryText2',
      tabsecondaryText3: 'tabsecondaryText3',
      tabsecondaryText4: 'tabsecondaryText4',
      tabsecondaryText5: 'tabsecondaryText5',
      tabsecondaryText6: 'tabsecondaryText6',
      tabtertiaryText1: 'tabtertiaryText1',
      tabtertiaryText2: 'tabtertiaryText2',
      tabtertiaryText3: 'tabtertiaryText3',
      tabtertiaryText4: 'tabtertiaryText4',
      tabtertiaryText5: 'tabtertiaryText5',
      tabtertiaryText6: 'tabtertiaryText6'),
  XCardComponents(
      title: "title5",
      secondaryText: "ttt",
      tertiaryText: "CHF",
      price: '00',
      icon1: XFavoriteButton(
        valueChanged: (_) {},
      ),
      icon2: XShoppingBagButton(
        valueChanged: (_) {},
      ),
      icon3: XFavoriteButtonCardScreen(
        valueChanged: (_) {},
        iconSize: icon3Size,
      ),
      icon4: XShoppingBagButton(
        valueChanged: (_) {},
        iconSize: icon4Size,
      ),
      imageData: AssetImage(
        imgProduct,
      ),
      tabTitle: 'tabTitle5',
      tabsecondaryText1: 'tabsecondaryText1',
      tabsecondaryText2: 'tabsecondaryText2',
      tabsecondaryText3: 'tabsecondaryText3',
      tabsecondaryText4: 'tabsecondaryText4',
      tabsecondaryText5: 'tabsecondaryText5',
      tabsecondaryText6: 'tabsecondaryText6',
      tabtertiaryText1: 'tabtertiaryText1',
      tabtertiaryText2: 'tabtertiaryText2',
      tabtertiaryText3: 'tabtertiaryText3',
      tabtertiaryText4: 'tabtertiaryText4',
      tabtertiaryText5: 'tabtertiaryText5',
      tabtertiaryText6: 'tabtertiaryText6'),
  XCardComponents(
      title: "title6",
      secondaryText: "ttt",
      tertiaryText: "CHF",
      price: '00',
      icon1: XFavoriteButton(
        valueChanged: (_) {},
      ),
      icon2: XShoppingBagButton(
        valueChanged: (_) {},
      ),
      icon3: XFavoriteButtonCardScreen(
        valueChanged: (_) {},
        iconSize: icon3Size,
      ),
      icon4: XShoppingBagButton(
        valueChanged: (_) {},
        iconSize: icon4Size,
      ),
      imageData: AssetImage(
        imgProduct,
      ),
      tabTitle: 'tabTitle6',
      tabsecondaryText1: 'tabsecondaryText1',
      tabsecondaryText2: 'tabsecondaryText2',
      tabsecondaryText3: 'tabsecondaryText3',
      tabsecondaryText4: 'tabsecondaryText4',
      tabsecondaryText5: 'tabsecondaryText5',
      tabsecondaryText6: 'tabsecondaryText6',
      tabtertiaryText1: 'tabtertiaryText1',
      tabtertiaryText2: 'tabtertiaryText2',
      tabtertiaryText3: 'tabtertiaryText3',
      tabtertiaryText4: 'tabtertiaryText4',
      tabtertiaryText5: 'tabtertiaryText5',
      tabtertiaryText6: 'tabtertiaryText6'),
];

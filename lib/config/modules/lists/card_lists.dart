import 'package:app_vorlage_prototyp/components/buttons/favorite_button.dart';
import 'package:app_vorlage_prototyp/components/buttons/favorite_button_card_screen.dart';
import 'package:app_vorlage_prototyp/components/buttons/shopping_bag_button.dart';
import 'package:app_vorlage_prototyp/config/modules/cards/class_card_components.dart';
import 'package:app_vorlage_prototyp/config/modules/images.dart';
// import './test.dart' show ...Class;
import 'package:flutter/material.dart';

final List<XCardComponents> xcardComponents = <XCardComponents>[
  // final XCardComponents _xcardComponents;
  XCardComponents(
      // keep Title Shor; one or two words only!
      title: "Title 1",
      secondaryText: "Subtitle 2",
      tertiaryText: "CHF",
      price: '00',
      icon1: XFavoriteButton(
        iconSize: icon1Size,
        valueChanged: (_) {},
      ),
      icon2: XShoppingBagButton(
        valueChanged: (_) {},
        iconSize: icon1Size,
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
      tabTitle: 'tabTitle 1',
      tabsecondaryText1: 'tabsecondaryText 1',
      tabsecondaryText2: 'tabsecondaryText 2',
      tabsecondaryText3: 'tabsecondaryText 3',
      tabsecondaryText4: 'tabsecondaryText 4',
      tabsecondaryText5: 'tabsecondaryText 5',
      tabsecondaryText6: 'tabsecondaryText 6',
      tabtertiaryText1: 'tabtertiaryText 1',
      tabtertiaryText2: 'tabtertiaryText 2',
      tabtertiaryText3: 'tabtertiaryText 3',
      tabtertiaryText4: 'tabtertiaryText 4',
      tabtertiaryText5: 'tabtertiaryText 5',
      tabtertiaryText6: 'tabtertiaryText 6'),
  XCardComponents(
      title: "title 2",
      secondaryText: "Subtitle 1",
      tertiaryText: "CHF",
      price: '00',
      icon1: XFavoriteButton(
        valueChanged: (_) {},
        iconSize: icon1Size,
      ),
      icon2: XShoppingBagButton(
        valueChanged: (_) {},
        iconSize: icon1Size,
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
      tabTitle: 'tabTitle 2',
      tabsecondaryText1: 'tabsecondaryText 2',
      tabsecondaryText2: 'tabsecondaryText 2',
      tabsecondaryText3: 'tabsecondaryText 3',
      tabsecondaryText4: 'tabsecondaryText 4',
      tabsecondaryText5: 'tabsecondaryText 5',
      tabsecondaryText6: 'tabsecondaryText 6',
      tabtertiaryText1: 'tabtertiaryText 1',
      tabtertiaryText2: 'tabtertiaryText 2',
      tabtertiaryText3: 'tabtertiaryText 3',
      tabtertiaryText4: 'tabtertiaryText 4',
      tabtertiaryText5: 'tabtertiaryText 5',
      tabtertiaryText6: 'tabtertiaryText 6'),
  XCardComponents(
      title: "title 3",
      secondaryText: "Subtitle 2",
      tertiaryText: "CHF",
      price: '00',
      icon1: XFavoriteButton(
        valueChanged: (_) {},
        iconSize: icon1Size,
      ),
      icon2: XShoppingBagButton(
        valueChanged: (_) {},
        iconSize: icon1Size,
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
      tabTitle: 'tabTitle 3',
      tabsecondaryText1: 'tabsecondaryText 1',
      tabsecondaryText2: 'tabsecondaryText 2',
      tabsecondaryText3: 'tabsecondaryText 3',
      tabsecondaryText4: 'tabsecondaryText 4',
      tabsecondaryText5: 'tabsecondaryText 5',
      tabsecondaryText6: 'tabsecondaryText 6',
      tabtertiaryText1: 'tabtertiaryText 1',
      tabtertiaryText2: 'tabtertiaryText 2',
      tabtertiaryText3: 'tabtertiaryText 3',
      tabtertiaryText4: 'tabtertiaryText 4',
      tabtertiaryText5: 'tabtertiaryText 5',
      tabtertiaryText6: 'tabtertiaryText 6'),
  XCardComponents(
      title: "title 4",
      secondaryText: "Subtitle 4",
      tertiaryText: "CHF",
      price: '00',
      icon1: XFavoriteButton(
        valueChanged: (_) {},
        iconSize: icon1Size,
      ),
      icon2: XShoppingBagButton(
        valueChanged: (_) {},
        iconSize: icon1Size,
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
      tabTitle: 'tabTitle 4',
      tabsecondaryText1: 'tabsecondaryText 1',
      tabsecondaryText2: 'tabsecondaryText 2',
      tabsecondaryText3: 'tabsecondaryText 3',
      tabsecondaryText4: 'tabsecondaryText 4',
      tabsecondaryText5: 'tabsecondaryText 5',
      tabsecondaryText6: 'tabsecondaryText 6',
      tabtertiaryText1: 'tabtertiaryText 1',
      tabtertiaryText2: 'tabtertiaryText 2',
      tabtertiaryText3: 'tabtertiaryText 3',
      tabtertiaryText4: 'tabtertiaryText 4',
      tabtertiaryText5: 'tabtertiaryText 5',
      tabtertiaryText6: 'tabtertiaryText 6'),
  XCardComponents(
      title: "title 5",
      secondaryText: "Subtitle 5",
      tertiaryText: "CHF",
      price: '00',
      icon1: XFavoriteButton(
        valueChanged: (_) {},
        iconSize: icon1Size,
      ),
      icon2: XShoppingBagButton(
        valueChanged: (_) {},
        iconSize: icon1Size,
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
      tabTitle: 'tabTitle 5',
      tabsecondaryText1: 'tabsecondaryText 1',
      tabsecondaryText2: 'tabsecondaryText 2',
      tabsecondaryText3: 'tabsecondaryText 3',
      tabsecondaryText4: 'tabsecondaryText 4',
      tabsecondaryText5: 'tabsecondaryText 5',
      tabsecondaryText6: 'tabsecondaryText 6',
      tabtertiaryText1: 'tabtertiaryText 1',
      tabtertiaryText2: 'tabtertiaryText 2',
      tabtertiaryText3: 'tabtertiaryText 3',
      tabtertiaryText4: 'tabtertiaryText 4',
      tabtertiaryText5: 'tabtertiaryText 5',
      tabtertiaryText6: 'tabtertiaryText 6'),
  XCardComponents(
      title: "title 6",
      secondaryText: "Subtitle 6",
      tertiaryText: "CHF",
      price: '00',
      icon1: XFavoriteButton(
        valueChanged: (_) {},
        iconSize: icon1Size,
      ),
      icon2: XShoppingBagButton(
        valueChanged: (_) {},
        iconSize: icon1Size,
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
      tabTitle: 'tabTitle 6',
      tabsecondaryText1: 'tabsecondaryText 1',
      tabsecondaryText2: 'tabsecondaryText 2',
      tabsecondaryText3: 'tabsecondaryText 3',
      tabsecondaryText4: 'tabsecondaryText 4',
      tabsecondaryText5: 'tabsecondaryText 5',
      tabsecondaryText6: 'tabsecondaryText 6',
      tabtertiaryText1: 'tabtertiaryText 1',
      tabtertiaryText2: 'tabtertiaryText 2',
      tabtertiaryText3: 'tabtertiaryText 3',
      tabtertiaryText4: 'tabtertiaryText 4',
      tabtertiaryText5: 'tabtertiaryText 5',
      tabtertiaryText6: 'tabtertiaryText 6'),
];

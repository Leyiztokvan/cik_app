import 'package:app_vorlage_prototyp/TESTs/setting/class_setting_tile_components.dart';
import 'package:app_vorlage_prototyp/TESTs/setting/setting_list_tiles_screen.dart';
import 'package:flutter/material.dart';

class XSettingListTile extends StatelessWidget {
  XSettingListTile({Key? key, required this.xtileComponents}) : super(key: key);
  final XSettingTileComponents xtileComponents;

  get index => xtileComponents.leading;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width * 1,
      child: ListTile(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SettingListTileListScreen(
                      tileComponents: xtileComponents)));
        },

        leading: xtileComponents.leading,
        title: Text.rich(
          TextSpan(text: xtileComponents.title),
        ),
        // style: newTheme().textTheme.bodyText1),
        trailing: xtileComponents.trailing,
      ),
    );
  }
}

//

//List ProfileListTilesList =[

// ];

// class Title {
//   Title({required this.title});

//   final String title;
// }


// List xlistTileTitles = ["Account", "Favourite", "Payment", "Notification", "???"];

// List<Icon> icons = [
//   Icon(Icons.person),
//   Icon(Icons.favorite_outline),
//   Icon(Icons.credit_card),
//   Icon(Icons.message),
//   Icon(Icons.info),
// ];

// List trailings = [
//   Icon(Icons.arrow_forward),
//   Icon(Icons.arrow_forward),
//   Icon(Icons.arrow_forward),
//   Icon(Icons.arrow_forward),
//   Icon(Icons.arrow_forward),
// ];

//  void addListTiles() {
//     titles
//         .map((e) =>
//             TileComponents(leading: icons as Icon, title: titles as String, trailing: trailings as Icon))
//         .toList();
//   }

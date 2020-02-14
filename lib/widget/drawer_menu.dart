import 'package:flutter/material.dart';
import '../UI/dictionary.dart';

class DrawerMenu extends StatelessWidget {
  @override
  build(BuildContext context) {
    return new Drawer(
      child: ListView(
        // iOS X padding fix: https://github.com/flutter/flutter/issues/22190
        padding: const EdgeInsets.all(0.0),
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: new Text('お問い合わせは以下まで'),
            accountEmail: new Text('freelancer@y-onishi.net'),
          ),
          new ListTile(
            title: new Text('ワード一覧'),
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                  builder: (BuildContext context) => new Dictionary(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

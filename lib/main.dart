import 'package:flutter/material.dart';
import 'package:layout1/pages/input_page.dart';
import 'package:layout1/pages/list_card.dart';
import 'package:layout1/pages/list_column.dart';
import 'package:layout1/pages/list_data_table.dart';
import 'package:layout1/pages/list_text_page.dart';
import 'package:layout1/pages/register_page.dart';
import 'pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // primaryColor: Colors.red[700],
        primaryColorLight: Color.fromARGB(255, 63, 197, 240),
        accentColor: Colors.amber[400],
      ),
      home: LoginPage(),
      routes: {
        LoginPage.routeName: (ctx) => LoginPage(),
        RegisterPage.routeName: (ctx) => RegisterPage(),
        ListCard.routeName: (ctx) => ListCard(),
        ListColumn.routeName: (ctx) => ListColumn(),
        InputPage.routeName: (ctx) => InputPage(),
        ListDataTable.routeName: (ctx) => ListDataTable(),
        ListTextPage.routeName: (ctx) => ListTextPage(),
      },
    );
  }
}

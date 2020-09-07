import 'package:flutter/material.dart';
import 'package:layout1/pages/input_page.dart';

class ListDataTable extends StatelessWidget {
  static const routeName = '/list-data-table';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample Data Table"),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColorLight,
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: () {
              Navigator.of(context).pushNamed(InputPage.routeName);
            },
          )
        ],
      ),
      // backgroundColor: Colors.redAccent,
      body: DataTable(
        columns: [
          DataColumn(label: Text("Column1")),
          DataColumn(label: Text("Column2")),
          DataColumn(label: Text("Column3"))
        ],
        rows: [
          DataRow(cells: [
            DataCell(Text("1")),
            DataCell(Text("data1")),
            DataCell(Text("z1")),
          ]),
          DataRow(cells: [
            DataCell(Text("2")),
            DataCell(Text("data2")),
            DataCell(Text("z2")),
          ]),
          DataRow(cells: [
            DataCell(Text("3")),
            DataCell(Text("data3")),
            DataCell(Text("z3")),
          ]),
        ],
        sortColumnIndex: 0,
        sortAscending: true,
      ),
    );
  }
}

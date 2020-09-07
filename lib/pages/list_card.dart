import 'package:flutter/material.dart';
import 'package:layout1/pages/list_column.dart';

class ListCard extends StatelessWidget {
  static const routeName = 'list-card';
  @override
  Widget build(BuildContext context) {
    final _highDevice = MediaQuery.of(context).size.height;
    var _2highDevice = MediaQuery.of(context).size.height / 2;
    var _4highDevice = MediaQuery.of(context).size.height / 4;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColorLight,
        centerTitle: true,
        title: Text('List Card'),
        actions: [
          Container(
            child: IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () {
                Navigator.of(context).pushNamed(ListColumn.routeName);
              },
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: _4highDevice * 0.05),
        height: _highDevice,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.symmetric(vertical: _4highDevice * 0.05),
                  child: Card(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: _4highDevice * 0.5,
                            child: Image.network(
                                'https://tstng.co/images/testing.png'),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: _4highDevice * 0.2),
                            width: _4highDevice,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    'Data Judul',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: _4highDevice * 0.1),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                      'Esse aute nulla non eu in labore ad cillum incididunt '),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

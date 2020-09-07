import 'package:flutter/material.dart';

class ListTextPage extends StatelessWidget {
  static const routeName = '/list-text';

  @override
  Widget build(BuildContext context) {
    final _highDevice = MediaQuery.of(context).size.height;
    var _2highDevice = MediaQuery.of(context).size.height / 2;
    var _4highDevice = MediaQuery.of(context).size.height / 4;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColorLight,
        centerTitle: true,
        title: Text('List text'),
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            // margin: EdgeInsets.only(left: _4highDevice * 0.2),
                            width: _4highDevice * 0.8,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
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
                                  // width: _4highDevice,
                                  child: Text(
                                      'Esse aute nulla non eu in labore ad cillum incididunt '),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // margin: EdgeInsets.only(left: _4highDevice * 0.2),
                            width: _4highDevice * 0.8,
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
                                  // width: _4highDevice,
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

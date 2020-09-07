import 'package:flutter/material.dart';
import 'package:layout1/pages/list_data_table.dart';

class ListColumn extends StatelessWidget {
  static const routeName = 'list-column';
  @override
  Widget build(BuildContext context) {
    final _highDevice = MediaQuery.of(context).size.height;
    var _2highDevice = MediaQuery.of(context).size.height / 2;
    var _4highDevice = MediaQuery.of(context).size.height / 4;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColorLight,
        centerTitle: true,
        title: Text('List Column'),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: () {
              Navigator.of(context).pushNamed(ListDataTable.routeName);
            },
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(
            left: _4highDevice * 0.05,
            right: _4highDevice * 0.05,
            bottom: _4highDevice * 0.2),
        height: _highDevice,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.symmetric(vertical: _4highDevice * 0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(
                        child: Container(
                          width: _4highDevice * 0.8,
                          padding: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: _4highDevice * 0.4,
                                child: Image.network(
                                    'https://tstng.co/images/testing.png'),
                              ),
                              Container(
                                // margin:
                                //     EdgeInsets.only(left: _4highDevice * 0.2),
                                width: _4highDevice * 0.5,
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
                                      child: Text('Esse aute '),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          width: _4highDevice * 0.8,
                          padding: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: _4highDevice * 0.4,
                                child: Image.network(
                                    'https://tstng.co/images/testing.png'),
                              ),
                              Container(
                                // margin:
                                //     EdgeInsets.only(left: _4highDevice * 0.2),
                                width: _4highDevice * 0.5,
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
                                      child: Text('Esse aute '),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              height: _4highDevice,
              child: Expanded(
                child: Container(
                  // color: Colors.grey,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Card(
                            child: Container(
                              width: _4highDevice * 0.8,
                              padding: EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: _4highDevice * 0.4,
                                    child: Image.network(
                                        'https://tstng.co/images/testing.png'),
                                  ),
                                  Container(
                                    // margin:
                                    //     EdgeInsets.only(left: _4highDevice * 0.2),
                                    width: _4highDevice * 0.5,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
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
                                          child: Text('Esse aute '),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    },
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

import 'package:flutter/material.dart';
// import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:layout1/pages/list_text_page.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class InputPage extends StatefulWidget {
  static const routeName = '/input-page';
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final _textController = TextEditingController();
  final _numberController = TextEditingController();
  final _passwordController = TextEditingController();
  DateTime _selectedDate;
  // // DateTime = ;
  PickedFile _imageFile;
  File _image;
  // String _fileName;
  // String _path;
  // Map<String, String> _paths;
  // String _extension;
  // // bool _loadingPath = false;
  // // bool _multiPick = false;
  // // bool _hasValidMime = false;
  // FileType _pickingType;
  // final ImagePicker _picker = ImagePicker();

  // TextEditingController _controller = new TextEditingController();

  void _presentDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2019),
      lastDate: DateTime.now(),
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _selectedDate = pickedDate;
      });
    });
    print('...');
  }

  // void pickImage() async {
  //   var image = await ImagePicker().getImage(source: ImageSource.gallery);
  //   setState(() {
  //     _imageFile = image;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final _highDevice = MediaQuery.of(context).size.height;
    var _2highDevice = MediaQuery.of(context).size.height / 2;
    var _4highDevice = MediaQuery.of(context).size.height / 4;
    // Provider
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Input Page'),
        backgroundColor: Theme.of(context).accentColor,
        actions: [
          Container(
            child: IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () {
                Navigator.of(context).pushNamed(ListTextPage.routeName);
              },
            ),
          )
        ],
      ),
      body: Container(
        height: _highDevice * 0.9,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50),
              Container(
                width: _2highDevice * 0.8,
                child: TextField(
                  controller: _textController,
                  decoration: InputDecoration(
                    hintText: 'Text Input',
                    hintStyle:
                        TextStyle(color: Theme.of(context).primaryColorLight),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 5,
                          color: Theme.of(context).primaryColorLight,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1,
                          color: Theme.of(context).primaryColorLight,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: _2highDevice * 0.8,
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: _numberController,
                  decoration: InputDecoration(
                    hintText: 'Number Input',
                    hintStyle:
                        TextStyle(color: Theme.of(context).primaryColorLight),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 5,
                            color: Theme.of(context).primaryColorLight,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1,
                            color: Theme.of(context).primaryColorLight,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: _2highDevice * 0.8,
                child: TextField(
                  keyboardType: TextInputType.text,
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password Input',
                    hintStyle:
                        TextStyle(color: Theme.of(context).primaryColorLight),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 5,
                            color: Theme.of(context).primaryColorLight,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1,
                            color: Theme.of(context).primaryColorLight,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                width: 200,
                child: Row(
                  children: [
                    Text(
                      _selectedDate == null
                          ? 'No Date Chosen!'
                          : 'Picked Date: ${DateFormat.yMd().format(_selectedDate)}',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              FlatButton(
                textColor: Theme.of(context).primaryColorLight,
                child: Text(
                  'Choose Date',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: _presentDatePicker,
              ),
              // RaisedButton(
              //   onPressed: () => _openFileExplorer(),
              //   child: new Text("Open file picker"),
              // ),
              // Builder(
              //   builder: (BuildContext context) => _loadingPath
              //       ? Padding(
              //           padding: const EdgeInsets.only(bottom: 10.0),
              //           child: const CircularProgressIndicator())
              //       : _path != null || _paths != null
              //           ? new Container(
              //               padding: const EdgeInsets.only(bottom: 30.0),
              //               height: MediaQuery.of(context).size.height * 0.50,
              //               child: new Scrollbar(
              //                   child: new ListView.separated(
              //                 itemCount: _paths != null && _paths.isNotEmpty
              //                     ? _paths.length
              //                     : 1,
              //                 itemBuilder: (BuildContext context, int index) {
              //                   final bool isMultiPath =
              //                       _paths != null && _paths.isNotEmpty;
              //                   final String name = 'File $index: ' +
              //                       (isMultiPath
              //                           ? _paths.keys.toList()[index]
              //                           : _fileName ?? '...');
              //                   final path = isMultiPath
              //                       ? _paths.values.toList()[index].toString()
              //                       : _path;

              //                   return new ListTile(
              //                     title: new Text(
              //                       name,
              //                     ),
              //                     subtitle: new Text(path),
              //                   );
              //                 },
              //                 separatorBuilder:
              //                     (BuildContext context, int index) =>
              //                         new Divider(),
              //               )),
              //             )
              //           : new Container(),
              // ),

              if (_imageFile != null)
                Image.file(
                  File(_imageFile.path),
                  height: _4highDevice,
                ),
              _imageFile != null
                  ? FlatButton(
                      textColor: Theme.of(context).primaryColorLight,
                      child: Text(
                        'Remove Image',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // onPressed: _presentDatePicker,
                      onPressed: () async {
                        // var image =
                        //     await ImagePicker().getImage(source: ImageSource.gallery);
                        setState(() {
                          _imageFile = null;
                        });
                      },
                    )
                  : FlatButton(
                      textColor: Theme.of(context).primaryColorLight,
                      child: Text(
                        'Pick Image',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // onPressed: _presentDatePicker,
                      onPressed: () async {
                        var image = await ImagePicker()
                            .getImage(source: ImageSource.gallery);
                        setState(() {
                          _imageFile = image;
                        });
                      },
                    ),

              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.only(bottom: 10),
                width: _2highDevice * 0.8,
                child: ButtonTheme(
                  minWidth: _4highDevice * 0.2,
                  height: _4highDevice * 0.3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RaisedButton(
                        // padding: EdgeInsets.symmetric(horizontal: 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: Colors.white,
                        onPressed: () {
                          print('login presseed');
                        },
                        child: Text('Save',
                            style: TextStyle(
                                color: Theme.of(context).primaryColorLight,
                                fontSize: _4highDevice * 0.15)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

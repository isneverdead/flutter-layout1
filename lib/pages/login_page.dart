import 'package:flutter/material.dart';
import 'package:layout1/pages/list_card.dart';
import './register_page.dart';

class LoginPage extends StatefulWidget {
  static const routeName = '/login';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isPasswordHidden = true;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _initValue = true;
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    if (_initValue) {
      // Provider.of<Auth>(context).tryAutoLogin();
      setState(() {
        _initValue = false;
      });
    }
  }

  void _showPassword() {
    setState(() {
      _isPasswordHidden = !_isPasswordHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _highDevice = MediaQuery.of(context).size.height;
    var _2highDevice = MediaQuery.of(context).size.height / 2;
    var _4highDevice = MediaQuery.of(context).size.height / 4;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorLight,
      body: Container(
        height: _highDevice,
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: EdgeInsets.only(top: _4highDevice),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: _4highDevice * 0.8,
                    child: Image.network('https://tstng.co/images/testing.png'),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: _2highDevice * 0.8,
                    child: TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        hintText: 'Username',
                        hintStyle: TextStyle(color: Colors.white),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 5,
                                color: Colors.white,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(10)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: Colors.white,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: _2highDevice * 0.8,
                    child: TextField(
                      controller: _passwordController,
                      obscureText: _isPasswordHidden,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.white),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 5,
                                color: Colors.white,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(10)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: Colors.white,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: _2highDevice * 0.8,
                    child: ButtonTheme(
                      minWidth: _4highDevice * 0.2,
                      height: _4highDevice * 0.3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FlatButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed(RegisterPage.routeName);
                            },
                            child: Text('Buat akun',
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                          ),
                          RaisedButton(
                            // padding: EdgeInsets.symmetric(horizontal: 10),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            color: Colors.white,
                            onPressed: () {
                              print('login presseed');
                              Navigator.of(context)
                                  .pushNamed(ListCard.routeName);
                            },
                            child: Text('Login',
                                style: TextStyle(
                                    color: Theme.of(context).primaryColorLight,
                                    fontSize: _4highDevice * 0.15)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text('Lupa password?',
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

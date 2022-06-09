import 'package:ahmad_sheaib_demo/core/view_model/product_view_model.dart';
import 'package:ahmad_sheaib_demo/ui/views/home.dart';
import 'package:ahmad_sheaib_demo/ui/views/register.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (_) =>ProductProvider(), child:MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SettingView(),
    );
  }
}

class SettingView extends StatefulWidget {
  @override
  _SettingViewState createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  final tabs = [Home(),Register()];

  int _currentIndex = 0;

  @override
  void initState() {
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40.0,
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: const Text("Ahmad Sheaib - Demo"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepPurple,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.5),
        items: [
          BottomNavigationBarItem(
            label:"Dashboard" ,
            icon: InkResponse(
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Container(
                padding: const EdgeInsets.only(
                  left: 10,
                ),
                child: const Icon(
                  Icons.dashboard,
                ),
              ),
            ),
            backgroundColor: Colors.deepPurple,
          ),
          BottomNavigationBarItem(
            label:"Register" ,
            icon: Container(
              padding: const EdgeInsets.only(
                right: 10,
              ),
              child: const Icon(Icons.notifications),
            ),
            backgroundColor: Colors.deepPurple,
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: tabs[_currentIndex],
    );
  }
}


